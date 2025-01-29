.data
  prompt: .asciiz "This is a fibonacci calculate program. Enter a number:"
  space: .asciiz " "

.text
  main:

    #show input instruction
    li $v0, 4
    la $a0, prompt
    syscall

    #input part
    li $v0, 5
    syscall

    #s0 for user input
    move $s0, $v0

    #value initialize
    li $s1,0 #s1 for 1nd number
    li $s2,1 #s2 for 2nd number
    li $s3,0 #s3 for counter

    fibonacci:
      bge $s3,$s0, end
      add $s4,$s1,$s2 #s4 for current ans
      move $s1,$s2
      move $s2,$s4
      
      #print result part
      li $v0, 1
      move $a0, $s1
      syscall
      #print space
      li $v0, 4
      la $a0, space
      syscall
    
      addi $s3,$s3,1 #couter++
      
      j fibonacci

  #program end
  end:
    li $v0, 10
    syscall
    
  
