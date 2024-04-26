.data
prompt: .asciiz "Enter a number (5 in total): "
space: .asciiz " "

.text
.globl main

main:
    # 预留栈空间用于存储5个整数
    addi $sp, $sp, -20

    # input $s2
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s2, $v0

    # input $s3
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s3, $v0

    # input $s4
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s4, $v0

    # input $s5
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s5, $v0

    # input $s6
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s6, $v0
    li $t0, 4  # 设置外循环计数器，需要进行数组长度-1次外循环
outer_loop:
    li $t1, 0  # 内循环索引，从0开始
inner_loop:

    beq $t2, $zero, inner_loop_end

    # 计算当前和下一个元素的地址
    sll $t3, $t1, 2  # $t3 = $t1 * 4
    add $t3, $sp, $t3 # $t3 = 栈基址 + 偏移

    lw $t4, 0($t3)     # 加载当前元素
    lw $t5, 4($t3)     # 加载下一个元素

    # 比较并可能交换
    slt $t2, $t5, $t4  # 检查是否需要交换
    beq $t2, $zero, no_swap

    sw $t5, 0($t3)     # 交换元素
    sw $t4, 4($t3)

no_swap:
    addi $t1, $t1, 1  # 内循环索引递增
    j inner_loop
inner_loop_end:
    addi $t0, $t0, -1 # 减少外循环次数
    bgtz $t0, outer_loop

    # 打印排序后的结果
    li $t1, 0  # 重置索引以用于打印
print_loop:
    li $t2, 5
    bge $t1, $t2, end_print

    sll $t3, $t1, 2
    add $t3, $sp, $t3
    lw $a0, 0($t3)
    li $v0, 1
    syscall

    li $v0, 4
    la $a0, space
    syscall

    addi $t1, $t1, 1
    j print_loop
end_print:

    # 恢复栈空间
    addi $sp, $sp, 20

    # 结束程序
    li $v0, 10
    syscall
