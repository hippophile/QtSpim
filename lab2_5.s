.data
number1: .word   0x12345678
number2: .word 0x1         # 1

.text
.globl main

main:
    lw $t0, number1           
    lw $t1, number2           
    
    

    li $v0, 10                 
    syscall
