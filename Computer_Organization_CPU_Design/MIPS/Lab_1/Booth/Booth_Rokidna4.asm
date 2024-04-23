.data
prompt:      .asciiz "Booth's algorithm\n"
getV1:       .asciiz "Enter the first number: "
getV2:       .asciiz "Enter the second number: "
ans:         .asciiz "The product is: "

.text
.globl main

main:
    # Print the initial message
    li   $v0, 4
    la   $a0, prompt
    syscall

    # Get the first number (multiplicand)
    li   $v0, 4
    la   $a0, getV1
    syscall
    li   $v0, 5
    syscall
    move $s0, $v0        # $s0 = multiplicand

    # Get the second number (multiplier)
    li   $v0, 4
    la   $a0, getV2
    syscall
    li   $v0, 5
    syscall
    move $s1, $v0        # $s1 = multiplier
    move $s3, $s1        # $s3 = copy of multiplier for shifting
    li   $s2, 0          # $s2 = product (initialize to 0)
    li   $t5, 0          # Counter

Booth:
    andi $t0, $s3, 1     # Check the least significant bit
    beq  $t0, $zero, Shift # If LSB is 0, skip addition

    add  $s2, $s2, $s0   # Add multiplicand to product

Shift:
    srl  $s3, $s3, 1     # Logical right shift of multiplier
    sll  $s0, $s0, 1     # Logical left shift of multiplicand
    addi $t5, $t5, 1     # Increment counter
    bne  $t5, 32, Booth  # Repeat 32 times for 32-bit numbers

    # Print the result
    li   $v0, 4
    la   $a0, ans
    syscall
    li   $v0, 1
    move $a0, $s2
    syscall

    # Exit program
    li   $v0, 10
    syscall
