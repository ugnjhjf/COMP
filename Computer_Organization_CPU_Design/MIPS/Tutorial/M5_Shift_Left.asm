.data

.text
  addi $s0, $zero, 4 #add immidiately
  
  sll $t0, $s0, 2 #shift left logical (shift 1 = *2£©
  
  #printout
  li $v0, 1 # 1 = integer
  add $a0, $zero, $t0
  syscall