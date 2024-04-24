#include <stdio.h>

int main(void){
    int s0 = 0x12345678;   // bed
    int t0 = s0 & 0xFF;
    t0 = t0 << 8*3;
    int t1 = s0 & 0xFF00;
    t1 = t1 >> 8*1;
    t1 = t1 << 8*2;
    int t2 = s0 & 0xFF0000;
    printf  ("t2 :%x\n", t2);
    t2 = t2 >> 8*2;
    printf  ("t2 :%x\n", t2);
    t2 = t2 << 8*1;
    printf  ("t2 :%x\n", t2);
    int t3 = s0 & 0xFF000000;
    t3 = t3 >> 8*3;


    // int t1 = s0 & (mask << 8*i--);
    // int t2 = s0 & (mask << 8*i--);
    // int t3 = s0 & (mask << 8*i--);


    int s1 = t0 | t1 | t2 | t3;  // to led

    printf  ("t0 :%x\n", t0);
    printf  ("t1 :%x\n", t1);
    printf  ("t2 :%x\n", t2);
    printf  ("t3 :%x\n", t3);

    printf("s0 :%x\n", s0);

    printf("s1 :%x\n", s1);   
}