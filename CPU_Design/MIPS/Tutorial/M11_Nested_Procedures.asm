.data
   newLine: .asciiz "\n"
.text

   main:
     addi $s0, $zero, 10
     
     jal increaseMyRegister
     
     #Print a new line
     li $v0, 4
     la $a0, newLine
     syscall
     
     #Print value
     jal printTheValue
     
   
   # Program End
   li $v0, 10
   syscall
   
   increaseMyRegister:
   
     # you can use value in S register, but you need to store value in stack and set back the original value.
     
     
     addi $sp, $sp, -8 #2 word = 8 byte -: use stack [push] 
     sw $s0,0($sp) #save word to stack
     sw $ra,4($sp)
     
     addi $s0, $s0, 30 # s0 = 40
     
     # Print new value in function.
     #jal printTheValue #Error: $ra address DOES NOT change Solution:Solve the old address to stack
  
     jal printTheValue	
     
     lw $s0, 0($sp) #load word from stack
     lw $ra, 4($sp)
     addi $sp, $sp,  4 #+: return space to stack[pop]
     
     jr $ra # jump to caller
     
     
     
   printTheValue:
     li $v0, 1
     move $a0, $s0
     syscall
       
     jr $ra