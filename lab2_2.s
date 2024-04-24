.data
bed: .word 0x12345678       # Big endian data

.text
.globl main

main:
    
    lw $s0, bed                 # $s0 = 0x12345678

    #andi $t0, $s0, 0xFF         # $t0 = 0x78
    sll $t0, $s0, 24            # move the bytes infront 3x8=24 (0x78000000)

    andi $t1, $s0, 0xFF00       # $t1 = 0x56
    sll $t1, $t1, 8             # move the bytes back  (0x00000056)
    
    sll $t2, $s0, 8            # and then to the middle so its (0x00560000)
    srl $t2, $t2, 24            # move the bytes back (0x00000043)
    sll $t2, $t2, 8             # and then where it should be (0x00004300)

    #andi $t3, $s0, 0xFF000000   # $t3 = 0x21
    srl $t3, $s0, 24            # move the bytes to the end (0x00000021)
                                
    or $s1, $t0, $t1            #
    or $s1, $s1, $t2            #
    or $s1, $s1, $t3            # $s1 = 0x78563412


    li $v0, 10
    syscall
