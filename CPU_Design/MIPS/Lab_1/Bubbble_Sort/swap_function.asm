.data

.text

   #LOAD 1st
   li $v0, 5
   syscall
   move $s2, $v0
   
   #LOAD 2nd
   li $v0, 5
   syscall
   move $s3, $v0
   
   
   #swap
   bgt $s2, $s3, swap
   j end
   
swap:
   move $s7, $s2
   move $s2, $s3
   move $s3, $s7
   
   j end
   
end:
   li $v0, 1
   move $a0, $s2
   syscall
   
   li $v0, 1
   move $a0, $s3
   syscall