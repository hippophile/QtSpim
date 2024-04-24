.data

loA : .word 0x12345678
hiA : .word 0xFFA56783

loB : .word 0xFF34A678
hiB : .word 0xBA5C7833

re_lo : .word 4
re_hi : .word 4 

.text
.globgitl main

main:

    lw $s0, loA
    lw $s1, hiA

    lw $s2, loB
    lw $s3, hiB

    addu $s4, $s0 $s2

    sltu $t0, $s4 $s0      # if $s4 < $t0 : 1 else: 0
                            # $t0 = curry
    addu $s5, $s1 $s3

    addu $s5, $s5 $t0

    sw $s4 re_lo
    sw $s5 re_hi 

    li $v0, 10                 
    syscall