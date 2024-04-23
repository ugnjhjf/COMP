.data
   age: .word 23  #


.text
   li $v0,1 # Let register get ready
   lw $a0,age
   syscall
