.data
prompt: .asciiz "Enter a number: "
newline: .asciiz "\n"

.text
.globl main

main:
    # ����5�����ֲ��洢�� $s2 �� $s6
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s2, $v0

    # �ظ��������裬�洢���뵽 $s3, $s4, $s5, $s6
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
    
    # ����4������
    li $t0, 4   # ��������

outer_loop:
    li $t1, 1   # ��ѭ����������5��������4�αȽ�

    # ��һ�ԱȽϺͽ���: $s2 �� $s3
    bgt $s2, $s3, swap_s2_s3
    j continue_comparison

swap_s2_s3:
    move $t2, $s2
    move $s2, $s3
    move $s3, $t2

continue_comparison:
    # �ڶ��ԱȽϺͽ���: $s3 �� $s4
    bgt $s3, $s4, swap_s3_s4
    j continue_comparison2

swap_s3_s4:
    move $t2, $s3
    move $s3, $s4
    move $s4, $t2

continue_comparison2:
    # �����ԱȽϺͽ���: $s4 �� $s5
    bgt $s4, $s5, swap_s4_s5
    j continue_comparison3

swap_s4_s5:
    move $t2, $s4
    move $s4, $s5
    move $s5, $t2

continue_comparison3:
    # ���ĶԱȽϺͽ���: $s5 �� $s6
    bgt $s5, $s6, swap_s5_s6
    j update_loop_counter

swap_s5_s6:
    move $t2, $s5
    move $s5, $s6
    move $s6, $t2

update_loop_counter:
    addi $t0, $t0, -1
    bgtz $t0, outer_loop

    # �������, ������
    li $v0, 1
    move $a0, $s2
    syscall
    li $v0, 4
    la $a0, newline
    syscall
    # �ظ���� $s3, $s4, $s5, $s6 ��ֵ
    
    # ��� $s3 ��ֵ
    li $v0, 1
    move $a0, $s3
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # ��� $s4 ��ֵ
    li $v0, 1
    move $a0, $s4
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # ��� $s5 ��ֵ
    li $v0, 1
    move $a0, $s5
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # ��� $s6 ��ֵ
    li $v0, 1
    move $a0, $s6
    syscall
    li $v0, 4
    la $a0, newline
    syscall


    li $v0, 10
    syscall

