.data
prompt:    .asciiz "Booth's algorithm"
getV1:           .asciiz "Enter the first number: "
getV2:           .asciiz "Enter the second number: "
ans:         .asciiz "The product is: "

.text
.globl main

main:
    #initialize value
    li $s0, 0 #Multiplicand
    li $s1, 0 #Multiplier
    li $s7, 0 #Addition position
    li $t5, 0 #counter
    # Begin message
    li   $v0, 4
    la   $a0, prompt
    syscall

    # Get V1
    li   $v0, 4
    la   $a0, getV1
    syscall

    li   $v0, 5
    syscall
    move $s0, $v0        # $s0 = multiplicand

    #Get V1 two's complement
    #nor $s1, $s0, $s0  
    #addiu $s2, $s2, 1  #   $s2 = V1 two's complement
    
    
    # Get V2
    li   $v0, 4
    la   $a0, getV2
    syscall
    
    li $v0, 5
    syscall
    move $s1, $v0       #  $s1 = multiplier
    move $s6, $s1       #  $s6 = calculate multiplier
    move $s5, $s0

    
    # Start calculation
    jal  Booth      

    
Booth:
    andi $t1, $s6 ,1 # get the last digit of the low word
    beq $t1, $zero, SkipAdd
    add $s5, $s1, $s5
SkipAdd:
   srl $s6, $s6, 1 # shift right
   sll $s5, $s1, 1 # shift right
   add $t5, $t5, 1 # update counter
   blt $t5, 16, Booth
   
End:
    move $s2, $v0        # Move result into $s2 for output

    # Print the result
    li $v0, 4
    la $a0, ans
    syscall
    li $v0, 1
    move $a0, $s2
    syscall

    # Exit program
    li $v0, 10
    syscall