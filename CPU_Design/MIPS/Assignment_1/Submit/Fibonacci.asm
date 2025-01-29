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

    #s4 for user input
    move $s4, $v0

    #value initialize
    li $s2,0 #s2 for 1nd number
    li $s3,1 #s3 for 2nd number
    li $s5,0 #s5 for counter
    
   

    fibonacci:
      bge $s5,$s4, end

      
      #print result part
      li $v0, 1
      move $a0, $s1
      syscall
      #print space
      li $v0, 4
      la $a0, space
      syscall
      
      add $s1,$s2,$s3 #s1 for current ans
      move $s2,$s3
      move $s3,$s1
    
      addi $s5,$s5,1 #couter++
      
      j fibonacci

  #program end
  end:
    li $v0, 10
    syscall
    
  
