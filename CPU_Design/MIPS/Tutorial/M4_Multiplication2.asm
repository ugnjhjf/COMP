.data

.text
   addi $t0, $zero, 2000
   addi $t1, $zero, 10
   
   mult $t0,$t1 # Result in 2 register low and high (lo & hi)
   
   mflo $s0
   
   # Place product to screen
   li $v0, 1
   add $a0, $zero, $s0
   syscall
   