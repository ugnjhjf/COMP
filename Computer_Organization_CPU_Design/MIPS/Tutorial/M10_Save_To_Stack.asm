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
     li $v0, 1
     move $a0, $s0
     syscall
     
   
   # Program End
   li $v0, 10
   syscall
   
   increaseMyRegister:
   
     # you can use value in S register, but you need to store value in stack and set back the original value.
     
     
     addi $sp, $sp, -4 # word = 4 byte -: use stack [push] 
     sw $s0,0($sp) #save word to stack
     
     addi $s0, $s0, 30 # s0 = 40
     
     # Print new value in function.
     li $v0, 1
     move $a0, $s0
     syscall
     
     lw $s0, 0($sp) #load word from stack
     addi $sp, $sp,  4 #+: return space to stack[pop]
     
     jr $ra # jump to caller