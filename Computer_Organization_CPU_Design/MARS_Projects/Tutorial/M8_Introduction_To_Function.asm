.data
      message: .asciiz "Hi, everybody. Here is Rokidna \n"
.text
# Procedure = Function in MIPS / Java = Method / CPP = Function

      #must have part
     main:
          jal displayMessage # current position will set to $ra then jump to Label's address
          
          addi $s0,$zero, 5
          
          li $v0, 1
          add $a0, $zero, $s0
          syscall
      
      # The program is done.
       li $v0,10
      syscall
      
     displayMessage:
          li $v0,4
          la $a0, message
          syscall
      
           jr $ra #go back to 
      
      
      
      
