/*
    This is the first assembly program to test the GPU
    This program will get the result of AB

    matrix A is at Mem Address 256
    matrix B is at Mem address 512
*/

section .text
global _start
_start:
    loadrf 256; // load matrix A to register file
    mul 512 768; // find BA ---> 768
    loadrf 768; // load BA to register file
    mul 512 768; // find BBA --> 768
    mul 256 1024; // find ABA --> 1024
    addsub 1024 1024 2; // ABA - BA --> 1024
    loadrf 1024; // load matrix ABA - BA to register file
    addsub 768 1024 2; // BBA - ABA - BA --> 1024
    loadrf 512; // load matrix B to register file
    mul 256 768; // find AB --> 768
    mul 512 1280; // find BB --> 1280
    loadrf 1280; // load BB to register file
    mul 256 1280; // find ABB ----> 1280
    loadrf 768; // load AB to register file
    addsub 1024 1024 2; BBA - ABA - BA - AB ----> 1024
    loadrf 1280; // load ABB to register file
    addsub 1024 1024 2; BBA - ABA - BA - AB - ABB
    nop;
    term;