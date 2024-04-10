.data
prompt: .asciiz "Enter a number: "
space: .asciiz " "

.text
.globl main

main:
    #show prompt
    li $v0, 4
    la $a0, prompt
    syscall
    
    #input user data s2-s6
    #s2
    li $v0, 5
    syscall
    move $s2, $v0
    #s3
    li $v0, 4
    la $a0, prompt
    syscall
    
    li $v0, 5
    syscall
    move $s3, $v0
    #s4
    li $v0, 4
    la $a0, prompt
    syscall
    
    li $v0, 5
    syscall
    move $s4, $v0

    #s5
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s5, $v0

    #s6
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $s6, $v0
    
   
    li $t0, 0 #counter
    
    
    li $t1, 4 #outer loop exectue 5 times
   
outer_loop:

    blt $t0, $t1, inner_loop
    j end    
inner_loop:
     bgt $s2, $s3, swap_s2_s3
     bgt $s3, $s4, swap_s3_s4  
     #bgt $s4, $s5, swap_s4_s5  
     #bgt $s5, $s6, swap_s5_s6
     addi $t0, $t0, 1                                   
    j outer_loop
swap_s2_s3:
     li $s7, 5
     move $s7, $s2
     move $s2, $s3
     move $s3, $s7
     jr $ra

swap_s3_s4:
     li $s7, 5
     move $s7, $s3
     move $s3, $s4
     move $s4, $s7
     jr $ra
     
end:  
  #print out s2-s6 after sort
    li $v0, 1
    move $a0, $s2
    syscall
    li $v0, 4
    la $a0, space
    syscall
    
    # $s3
    li $v0, 1
    move $a0, $s3
    syscall
    li $v0, 4
    la $a0, space
    syscall

    # ??? $s4 ???
    li $v0, 1
    move $a0, $s4
    syscall
    li $v0, 4
    la $a0, space
    syscall

    # $s5
    li $v0, 1
    move $a0, $s5
    syscall
    li $v0, 4
    la $a0, space
    syscall

    # ??? $s6 ???
    li $v0, 1
    move $a0, $s6
    syscall
    li $v0, 4
    la $a0, space
    syscall

    li $v0, 10
    syscall

