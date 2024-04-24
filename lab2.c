#include <stdio.h>

int main(void){
    int s0 = 0x12345678;
    int t0 = s0 & 0xFF;
    int mask = 0xFF;
    int i = 3;
    int t1 = s0 & (mask << 8*i--);
    int t2 = s0 & (mask << 8*i--);
    int t3 = s0 & (mask << 8*i--);
    int s1 = t0 | t1 | t2 | t3;
    printf  ("%x\n", s1);   
}