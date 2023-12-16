/*
    This is the first assembly program to test the GPU
    This program will get the result of AB

    matrix A is at Mem Address 256
    matrix B is at Mem address 512
*/

section .text
global _start
_start:
    loadrf 512; // load matrix B to register file
    mul 256 1024; // multiply with A save to location 1024
    nop;
    term;