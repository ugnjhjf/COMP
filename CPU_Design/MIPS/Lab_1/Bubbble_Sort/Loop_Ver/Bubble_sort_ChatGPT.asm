.data
prompt: .asciiz "Enter a number (5 in total): "
space: .asciiz " "

.text
.globl main

main:
    # Ԥ��ջ�ռ����ڴ洢5������
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
    li $t0, 4  # ������ѭ������������Ҫ�������鳤��-1����ѭ��
outer_loop:
    li $t1, 0  # ��ѭ����������0��ʼ
inner_loop:

    beq $t2, $zero, inner_loop_end

    # ���㵱ǰ����һ��Ԫ�صĵ�ַ
    sll $t3, $t1, 2  # $t3 = $t1 * 4
    add $t3, $sp, $t3 # $t3 = ջ��ַ + ƫ��

    lw $t4, 0($t3)     # ���ص�ǰԪ��
    lw $t5, 4($t3)     # ������һ��Ԫ��

    # �Ƚϲ����ܽ���
    slt $t2, $t5, $t4  # ����Ƿ���Ҫ����
    beq $t2, $zero, no_swap

    sw $t5, 0($t3)     # ����Ԫ��
    sw $t4, 4($t3)

no_swap:
    addi $t1, $t1, 1  # ��ѭ����������
    j inner_loop
inner_loop_end:
    addi $t0, $t0, -1 # ������ѭ������
    bgtz $t0, outer_loop

    # ��ӡ�����Ľ��
    li $t1, 0  # �������������ڴ�ӡ
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

    # �ָ�ջ�ռ�
    addi $sp, $sp, 20

    # ��������
    li $v0, 10
    syscall
