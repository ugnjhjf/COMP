String  :
    .data
        myMessage: .asciiz "Hello World \n"

    .text
        li $v0, 4
        li $v1, 4
====================================================


integer :     
    .data
        age: .word 23  #


    .text
        li $v0,1 # Let register get ready
        lw $a0,age
        syscall

====================================================
float   :
     .data
         PI: .float 3.14
    
    .text
         li $v0, 2
         lwcl $f12, PI
====================================================
byte    :   
    .data
         myCharacter: .byte 'a'
    
    .text
         li $v0,4
         la $a0, myCharacter
    syscall
====================================================
word    :
    .data
        age: .word 23  #


    .text
        li $v0,1 # Let register get ready
        lw $a0,age
        syscall


