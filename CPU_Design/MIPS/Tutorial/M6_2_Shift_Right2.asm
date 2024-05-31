.data

.text
  addi $t0, $zero, 30
  addi $t1, $zero, 6
  
  div $t0 , $t1 # t0 = t0/t1
  mflo $s0 #Quotinet ษฬ
  mfhi $s1 #Remainder ำเสý
  
  li $v0, 1
  add $a0, $zero, $s1
  syscall
  