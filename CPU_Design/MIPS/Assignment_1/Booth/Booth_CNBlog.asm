.data

    promptStart:    .asciiz "This program does AxB without using mult or div"
           getA:    .asciiz "Please enter the first number(multiplicand): "
           getB:    .asciiz "Please enter the second number(multiplier): "

          space:    .asciiz " "

         result:    .asciiz "The product, using my program is: "
         mipMult:   .asciiz "The product, using MIPs multu is: "

       endLine: .asciiz "\n"

.text

main:
    #"welcome" screen
    li  $v0,4           # code for print_string
    la  $a0,promptStart # point $a0 to prompt string
    syscall             # print the prompt


    li  $v0,4           # code for print_string
    la  $a0,endLine     # point $a0 to prompt string
    syscall             # print the prompt

    #prompt for multiplicand
    li  $v0,4           # code for print_string
    la  $a0,getA        # point $a0 to prompt string
    syscall             # print the prompt

    #acquire multiplicand
    li  $v0,5           # code for read_int
    syscall             # get an int from user --> returned in $v0
    move    $s0,$v0     # move the resulting int to $s0
    move    $s5,$s0     # copy of multiplicand to use in multu

    #prompt for multiplier
    li  $v0,4           # code for print_string
    la  $a0,getB        # point $a0 to prompt string
    syscall             # print the prompt

    #acquire multiplier
    li  $v0,5           # code for read_int
    syscall             # get an int from user --> returned in $v0
    move    $s1,$v0     # move the resulting int to $s0

    move    $s6,$s1     # copy of multiplier to use in multu

    jal MyMult
    j   print

MyMult:
    move $s3, $0        # lw product
    move $s4, $0        # hw product

    beq $s1, $0, done
    beq $s0, $0, done 
    move $s2, $0        # extend multiplicand to 64 bits

loop:
    andi $t0, $s0, 1    # LSB(multiplier)
    beq $t0, $0, next   # skip if zero
    addu $s3, $s3, $s1  # lw(product) += lw(multiplicand)
    sltu $t0, $s3, $s1  # catch carry-out(0 or 1)
    addu $s4, $s4, $t0  # hw(product) += carry
    addu $s4, $s4, $s2  # hw(product) += hw(multiplicand)
next:
    # shift multiplicand left
    srl $t0, $s1, 31    # copy bit from lw to hw
    sll $s1, $s1, 1
    sll $s2, $s2, 1
    addu $s2, $s2, $t0

    srl $s0, $s0, 1     # shift multiplier right
    bne $s0, $0, loop

done:
    jr $ra

print:
    # print result string
    li  $v0,4           # code for print_string
    la  $a0,result      # point $a0 to string
    syscall             # print the result string

    # print out the result
    li  $v0,1           # code for print_int
    move    $a0,$s4     # put result in $a0
    syscall             # print out result

    li  $v0,4           # code for print_string
    la  $a0,space       # point $a0 to string
    syscall             # print the result string

    li  $v0,1           # code for print_int
    move    $a0,$s3     # put result in $a0
    syscall             # print out result


    # print the line feed
    li  $v0,4           # code for print_string
    la  $a0,endLine     # point $a0 to string
    syscall             # print the linefeed

doMult:
#Do same computation using Mult
    multu   $s5, $s6
    mfhi    $t0
    mflo    $t1

    li  $v0,4           # code for print_string
    la  $a0,mipMult     # point $a0 to string
    syscall

    # print out the result
    li  $v0,1           # code for print_int
    move    $a0,$t0         # put high in $a0
    syscall             # print out result

    li  $v0,4           # code for print_string
    la  $a0,space       # point $a0 to string
    syscall             # print the result string

    # print out the result
    li  $v0,1           # code for print_int
    move    $a0,$t1         # put low in $a0
    syscall             # print out result

    # print the line feed
    li  $v0,4           # code for print_string
    la  $a0,endLine     # point $a0 to string
    syscall             # print the linefeed

    # All done, thank you!
    li  $v0,10          # code for exit
    syscall             # exit program