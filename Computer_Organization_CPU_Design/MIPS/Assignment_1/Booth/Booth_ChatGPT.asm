.data
prompt: .asciiz "Enter two integers to multiply using Booth's Algorithm: \n"
input1: .asciiz "Enter multiplicand (A): "
input2: .asciiz "Enter multiplier (B): "
result: .asciiz "The product is: "
newline: .asciiz "\n"

.text
.globl main

main:
    li $v0, 4
    la $a0, prompt
    syscall

    # Get multiplicand
    li $v0, 4
    la $a0, input1
    syscall
    li $v0, 5
    syscall
    move $s0, $v0  # multiplicand
    
    # Get multiplier
    li $v0, 4
    la $a0, input2
    syscall
    li $v0, 5
    syscall
    move $s1, $v0  # multiplier

    # Prepare for Booth's algorithm
    li $s2, 0      # product
    move $s3, $s0  # use s3 to keep multiplicand
    move $s4, $s1  # use s4 to keep multiplier
    li $s5, 16     # set up a counter for 16 bits

BoothMult:
    # Right shift multiplier and check sign bit
    andi $t0, $s4, 1  # get LSB of multiplier
    beqz $t0, skip    # if LSB is 0, skip adding/subtracting
    add $s2, $s2, $s3 # add multiplicand to product

skip:
    sra $s4, $s4, 1   # arithmetic right shift on multiplier
    sll $s3, $s3, 1   # logical left shift on multiplicand
    addi $s5, $s5, -1 # decrement the bit count
    bnez $s5, BoothMult # if counter not zero, loop

    # Check if original multiplier was negative
    bltz $s1, negate_result

    j display_result

negate_result:
    sub $s2, $zero, $s2  # negate the result if multiplier was negative

display_result:
    li $v0, 4
    la $a0, result
    syscall
    li $v0, 1
    move $a0, $s2
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 10
    syscall

