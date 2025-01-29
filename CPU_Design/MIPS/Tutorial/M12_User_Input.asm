.data
   prompt: .asciiz "Enter your age: "
   message: .asciiz "\n Your age is "
.text
   # Prompt the user to enter the age [Notify Part]
   li $v0, 4
   la $a0, prompt
   syscall
   # Input part
   li $v0, 5
   syscall
   
   # Store the result in #t0
   move $t0, $v0
   
   li $v0, 4 #load text
   la $a0, message
   syscall
   
   
   # Print or show the age
   li $v0, 1 #print integer
   move $a0, $t0
   syscall
   