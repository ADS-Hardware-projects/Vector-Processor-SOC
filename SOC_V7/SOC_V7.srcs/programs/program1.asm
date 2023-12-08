/*
    This is the first assembly program to test the GPU
    This program will get the result of (3A+2B)B - BA

    matrix B is at Mem address 1024
    matrix A is at Mem Address 256
*/

section .text
global _start
_start:
    loadrf 256; // load matrix A to the register file
    addsub 256 512 0; // A + A --> Mem address 512
    addsub 512 512 0; // 2A + A --> Mem address 512 (At 512 now 3A)
    mul 1024 768; // B*A --> Mem address 768
    loadrf 1024; // load matrix B to register file
    addsub 1024 1280 0; // B+B ---> Mem address 1280
    loadrf 1280; // load 2B to register file
    addsub 512 512 0; // 3A + 2B --> 512 (At 512 now 3A + 2B)
    loadrf 1024; // load B to the register file
    mul 512 512; // (3A+2B)B --> Mem address 512
    loadrf 768; // load BA to the register file
    addsub 512 1024 2; // (3A+2B)B - BA
    nop;
    nop;
    term;
