.data
prompt:    .asciiz "Booth's algorithm\n"
getV1:     .asciiz "Enter the first number: "
getV2:     .asciiz "Enter the second number: "
ans:       .asciiz "The product is: "

.text
.globl main

main:
    # Display initial message
    li $v0, 4
    la $a0, prompt
    syscall

    # Get the first number (multiplicand)
    li $v0, 4
    la $a0, getV1
    syscall
    li $v0, 5
    syscall
    move $s0, $v0        # $s0 = multiplicand

    # Get the second number (multiplier)
    li $v0, 4
    la $a0, getV2
    syscall
    li $v0, 5
    syscall
    move $s1, $v0        # $s1 = multiplier

    # Initialize necessary registers
    li $s2, 0            # Initialize product register to 0
    li $s7, 0            # Addition position
    li $t5, 0            # Counter

    # Start Booth algorithm
    jal Booth      
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

Booth:
    li $t5, 16           # Set loop count for 16-bit multiplication
    BoothLoop:
        andi $t1, $s1, 1     # Get LSB of the multiplier
        beq $t1, $zero, SkipAdd  # If LSB is 0, skip addition
        add $s2, $s2, $s0     # Add multiplicand to the product
    SkipAdd:
        srl $s1, $s1, 1       # Shift right the multiplier
        sll $s0, $s0, 1       # Shift left the multiplicand
        addi $t5, $t5, -1     # Decrement loop counter
        bnez $t5, BoothLoop   # Continue loop if not zero
    move $v0, $s2              # Move final product to return register
    jr $ra                     # Return from subroutine
