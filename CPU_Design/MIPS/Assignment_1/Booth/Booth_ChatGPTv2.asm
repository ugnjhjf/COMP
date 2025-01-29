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
    move $t1, $v0  # Store multiplicand in $t1

    # Get multiplier
    li $v0, 4
    la $a0, input2
    syscall
    li $v0, 5
    syscall
    move $t2, $v0  # Store multiplier in $t2

    # Prepare for Booth's algorithm
    li $t3, 0      # Initialize result to zero
    move $t4, $t1  # Temp register for multiplicand
    move $t5, $t2  # Temp register for multiplier
    li $t6, 16     # Set up a counter for 16-bit operations

    # Adjust signs for multiplicand and multiplier
    bltz $t1, neg_mult1
    bltz $t2, neg_mult2

    # Start Booth algorithm
    j BoothMult

neg_mult1:
    negu $t4, $t4  # Make multiplicand positive
    j continue

neg_mult2:
    negu $t5, $t5  # Make multiplier positive

continue:
    # Check if both were negative
    bltz $t1, check_second_neg
    j BoothMult

check_second_neg:
    bltz $t2, make_product_positive
    j BoothMult

make_product_positive:
    negu $t3, $t3  # Make product positive if both inputs were negative
    j BoothMult

BoothMult:
    andi $t0, $t5, 1  # Check LSB of multiplier
    beqz $t0, skip_add # If LSB is 0, skip addition
    add $t3, $t3, $t4  # Add multiplicand to result

skip_add:
    srl $t5, $t5, 1    # Logical right shift on multiplier
    sll $t4, $t4, 1    # Logical left shift on multiplicand
    subi $t6, $t6, -1  # Decrement counter
    bnez $t6, BoothMult # Loop if counter not zero

    # Output result
    li $v0, 4
    la $a0, result
    syscall
    li $v0, 1
    move $a0, $t3
    syscall
    li $v0, 10
    syscall
