.data
  prompt: .asciiz "Enter a number (5 in total): "
  space: .asciiz " "


.text


main:
#value initialize
    
#input section

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
    
    jal outerLoop
    
#push integer section
addi $sp, $sp, -20
sw $s2,0($sp)
sw $s3,4($sp)
sw $s4,8($sp)
sw $s5,16($sp)
sw $s6,20($sp)


#bubble sort section
  #counter set
  li $t0, 1 #Outerloop counter
  li $t1, 1 #Innerloop counter
  # t4 for address

   
outerLoop:
  li $t1, 1 #Innerloop counter
  lw $t4, 0($sp) #t4 for 1st element location
  ble $t0, 5, innerLoop
  j end

innerLoop:
  lw $t2,0($sp) #t2 for i element
  addi $sp, $sp, 4 #i+1 element location
  lw $t3, 4($sp) #t3 for i+1 element
  
  bgt $t2, $t3, swap
  
  
  addi $t1,$t1, 1
  blt $t1, $t0, outerLoop
  
  j innerLoop

swap:
#t6 = temp
  move $t6, $t2
  move $t2, $t3
  move $3, $t6
  
  jr $ra

#program end
end:
  li $v0, 10
  syscall