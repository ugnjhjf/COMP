.data
prompt: .asciiz "Enter the number of Fibonacci numbers to calculate: "
fibValue: .asciiz "Fibonacci number: "

    .text
    .globl main

main:
    # Print prompt to user
    li $v0, 4           # system call for print_str
    la $a0, prompt      # load the address of prompt into $a0
    syscall             # make system call

    # Read integer from user
    li $v0, 5           # system call for read_int
    syscall             # make system call
    move $s0, $v0       # move read integer to $s0 for safe keeping

    # Prepare for loop
    li $s1, 0           # First fibonacci number
    li $s2, 1           # Second fibonacci number
    li $s3, 1           # Counter for while loop

    # Check if user entered a number less than 1
    blez $s0, end       # If it is, end the program

    # Special case: print first fib number
    li $v0, 4           # system call for print_str
    la $a0, fibValue    # load address of label
    syscall             # make system call
    
    li $v0, 1           # system call for print_int
    move $a0, $s1       # value to print
    syscall             # make system call
    
    # Special case for n=1
    bgt $s0, 1, loop    # If user asked for more than 1 number, jump to loop
    j end               # else, go to end

loop:
    # Print label for fib number
    li $v0, 4           # system call for print_str
    la $a0, fibValue    # load address of label
    syscall             # make system call
    
    # Calculate next fib number
    add $t0, $s1, $s2   # $t0 = $s1 + $s2

    # Print fib number
    li $v0, 1           # system call for print_int
    move $a0, $t0       # value to print
    syscall             # make system call

    # Prepare for next iteration
    move $s1, $s2       # $s1 = $s2
    move $s2, $t0       # $s2 = $t0

    # Print newline
    li $v0, 11          # system call for print_char
    li $a0, 0x0A        # newline character
    syscall             # make system call

    # Increment counter and check loop condition
    addi $s3, $s3, 1    # increment counter
    blt $s3, $s0, loop  # if counter < n, continue loop

end:
    # Exit the program
    li $v0, 10          # system call for exit
    syscall             # make system call
