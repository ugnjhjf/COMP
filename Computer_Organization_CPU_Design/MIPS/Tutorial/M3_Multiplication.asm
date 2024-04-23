.data

.text
   addi $s0, $zero, 10
   addi $s1, $zero, 4
   
   mul $t0, $s0 , $s1 # t0 = 10 * 4
   
   li $v0, 1 #print out integer
   add $a0, $zero, $t0
   syscall
   # mul  # multiplication 3 register
   # mult # multiplication 2 register
   # sll  # shift left logical <<