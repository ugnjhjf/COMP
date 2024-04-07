.data
    age: .word 23

.text
    li $v0, 1
    lv $a0, age
    syscall