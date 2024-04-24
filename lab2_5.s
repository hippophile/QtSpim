.data
number1: .word 0xFFFFFFFF  # 0x1234567899
number2: .word 0x1         # 1

.text
.globl main

main:
    lw $t0, number1           
    lw $t1, number2           
    
    addu $t2, $t0, $t1        
    sltu $t3, $t2, $t0         # if $t2 < $t0 : 1 else: 0

                               # $t3 = curry

    li $v0, 1                   
    move $a0, $t3              # preping for printing 
    syscall                     

    li $v0, 10                 
    syscall
