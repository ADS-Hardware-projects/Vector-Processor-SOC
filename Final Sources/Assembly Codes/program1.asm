/*
    This is the first assembly program to test the GPU
    This program will get the result of (3A+2B)B - BA

    matrix A is at Mem Address 256
    matrix B is at Mem address 512
*/

section .text
global _start
_start:
    loadrf 256; // load matrix A to the register file
    addsub 256 768 0; // A + A --> Mem address 768
    addsub 768 768 0; // 2A + A --> Mem address 768 (At 768 now 3A)
    mul 512 1024; // B*A --> Mem address 1024
    loadrf 512; // load matrix B to register file
    addsub 512 1280 0; // B+B ---> Mem address 1280
    loadrf 1280; // load 2B to register file
    addsub 768 768 0; // 3A + 2B --> 768 (At 768 now 3A + 2B)
    loadrf 512; // load B to the register file
    mul 768 768; // (3A+2B)B --> Mem address 768
    loadrf 1024; // load BA to the register file
    addsub 768 1024 2; // (3A+2B)B - BA
    nop;
    nop;
    term;
