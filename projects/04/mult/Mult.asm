// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// D register is a temp storage register next to CPU
// M is the register[A] stored in RAM
// A register is an address storage register next to CPU (holds address from M)

// product stored in R2
// multiplier stored in R1


@R2       // set product = 0
M=0

(LOOP)    // beginning of loop
@R1
D=M       //store multiplier in D register
@END
D;JLE     // if multiplier <= 0 jump to end, an inifite loop

@R0
D=M       // Store multipland in D Register
@R2
M=M+D     // Add multipland to product stored in R2
@R1
M=M-1     // subtract 1 from mulitplier

@LOOP     // jump back to the beginning of loop
0;JMP

(END)
@END
0;JMP     // infinite loop
