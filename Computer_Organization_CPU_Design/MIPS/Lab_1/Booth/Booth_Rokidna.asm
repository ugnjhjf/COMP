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
    move $s5, $s0        # $s5 = calculate multiplicand

    #Get V1 two's complement
    #nor $s1, $s0, $s0  
    #addiu $s2, $s2, 1  #   $s2 = V1 two's complement
    
    
    # Get V2
    li   $v0, 4
    la   $a0, getV2
    syscall
    
    li $v0, 5
    syscall
    move $s1, $v1       #  $s1 = multiplier
    move $s6, $s1       #  $s6 = calculate multiplier

    
    # Start calculation
    jal  Booth      

    
Booth:
    andi $t1, $s4 ,1 # get the last digit of the low word
    subi $t2, $s7, $t1      #next execute instruction
    
    beq $t2, $zero,Shifting #AddZero and Shift 
    beq $t2, 1, AddMultiplicand #Add A and shift
    beq $t2, -1, AddNeg #Add -A ansd shift
    
AddMultiplicand:
    addi $s3, $s3, $5
    j Shifting

AddNeg:
    sub $s3, $s3, $5
    j Shifting

Shifting:
#shift low word part
   andi $s7, $s4, 1 # Move the last digist of low word to $s7
   srl $s4, $s4, 1
#shift high word part
   srl $t0, $s3, 31
   or  $s4, $s4, $t0
   
   addi $t5, 1, $t5 # update counter
   
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