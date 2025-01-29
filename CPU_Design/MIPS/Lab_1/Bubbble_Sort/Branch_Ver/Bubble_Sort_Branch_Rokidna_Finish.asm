.data
space: .asciiz " "
.text

main:
   #LOAD 1st
   li $v0, 5
   syscall
   move $s2, $v0
   
   #LOAD 2nd
   li $v0, 5
   syscall
   move $s3, $v0
   
   #LOAD 3rd
   li $v0, 5
   syscall
   move $s4, $v0
      
   #LOAD 4th
   li $v0, 5
   syscall
   move $s5, $v0
   
   #LOAD 5th
   li $v0, 5
   syscall
   move $s6, $v0
      
   #set counter
   li $t6, 0
   li $t7, 5
   
   #swap
outer_loop:
  blt $t6, $t7, inner_loop
  j end
  
  inner_loop:   

   bgt $s2, $s3, swap_s2_s3
   s3:
   bgt $s3, $s4, swap_s3_s4
   s4:
   bgt $s4, $s5, swap_s4_s5
   s5:
   bgt $s5, $s6, swap_s5_s6
   s6:
   
   addi $t6, $t6, 1
   j outer_loop
   
  

swap_s2_s3:
   move $s7, $s2
   move $s2, $s3
   move $s3, $s7
   j s3
   
swap_s3_s4:
   move $s7, $s3
   move $s3, $s4
   move $s4, $s7
   j s4

swap_s4_s5:
   move $s7, $s4
   move $s4, $s5
   move $s5, $s7
   j s5
   
swap_s5_s6:
   move $s7, $s5
   move $s5, $s6
   move $s6, $s7
   j s6



   
end:
   li $v0, 1
   move $a0, $s2
   syscall
   jal display
   
   li $v0, 1
   move $a0, $s3
   syscall
   jal display
   
   li $v0, 1
   move $a0, $s4
   syscall
   jal display
   
   li $v0, 1
   move $a0, $s5
   syscall
   jal display
   
      
   li $v0, 1
   move $a0, $s6
   syscall
   

         
   #program end
   li $v0, 10
   syscall
   
   
   display:
      li $v0,4
      la $a0, space
      syscall
      
      jr $ra #go back to 