.data
prompt: .asciiz "Enter a number: "
newline: .asciiz "\n"

.text
.globl main

main:
    # 输入5个数字并存储到 $s2 到 $s6
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s2, $v0

    # 重复上述步骤，存储输入到 $s3, $s4, $s5, $s6
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s3, $v0

    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s4, $v0

    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s5, $v0

    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s6, $v0
    
    # 进行4轮排序
    li $t0, 4   # 排序轮数

outer_loop:
    li $t1, 1   # 内循环计数，对5个数进行4次比较

    # 第一对比较和交换: $s2 和 $s3
    bgt $s2, $s3, swap_s2_s3
    j continue_comparison

swap_s2_s3:
    move $t2, $s2
    move $s2, $s3
    move $s3, $t2

continue_comparison:
    # 第二对比较和交换: $s3 和 $s4
    bgt $s3, $s4, swap_s3_s4
    j continue_comparison2

swap_s3_s4:
    move $t2, $s3
    move $s3, $s4
    move $s4, $t2

continue_comparison2:
    # 第三对比较和交换: $s4 和 $s5
    bgt $s4, $s5, swap_s4_s5
    j continue_comparison3

swap_s4_s5:
    move $t2, $s4
    move $s4, $s5
    move $s5, $t2

continue_comparison3:
    # 第四对比较和交换: $s5 和 $s6
    bgt $s5, $s6, swap_s5_s6
    j update_loop_counter

swap_s5_s6:
    move $t2, $s5
    move $s5, $s6
    move $s6, $t2

update_loop_counter:
    addi $t0, $t0, -1
    bgtz $t0, outer_loop

    # 排序结束, 输出结果
    li $v0, 1
    move $a0, $s2
    syscall
    li $v0, 4
    la $a0, newline
    syscall
    # 重复输出 $s3, $s4, $s5, $s6 的值
    
    # 输出 $s3 的值
    li $v0, 1
    move $a0, $s3
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # 输出 $s4 的值
    li $v0, 1
    move $a0, $s4
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # 输出 $s5 的值
    li $v0, 1
    move $a0, $s5
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # 输出 $s6 的值
    li $v0, 1
    move $a0, $s6
    syscall
    li $v0, 4
    la $a0, newline
    syscall


    li $v0, 10
    syscall

