(SimpleFunction)
@R13
M=0
(SimpleFunction$loop_begin)
@R13
D=M
@LCL
A=D+M
M=0
@R13
MD=M+1
@2
D=D-A
@SimpleFunction$loop_begin
D;JLE
@2
D=A
@SP
M=D+M

@0
D=A
@LCL
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

@1
D=A
@LCL
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

@SP
AM=M-1
D=M
A=A-1
D=M+D
M=D

@SP
A=M-1
D=!M
M=D

@0
D=A
@ARG
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

@SP
AM=M-1
D=M
A=A-1
D=M+D
M=D

@1
D=A
@ARG
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

@SP
AM=M-1
D=M
A=A-1
D=M-D
M=D

        // FRAME = LCL
        @LCL
        D=M
        @R13
        M=D

        // *ARG = pop()
        @SP
        AM=M-1
        D=M
        @ARG
        A=M
        M=D

        // SP = ARG + 1
        D=A+1
        @SP
        M=D

        // THAT = * (FRAME-1)
        @1
        D=A
        @R13
        A=M-D
        D=M
        @THAT
        M=D

        // THIS = * (FRAME-2)
        @2
        D=A
        @R13
        A=M-D
        D=M
        @THIS
        M=D

        // ARG = * (FRAME-3)
        @3
        D=A
        @R13
        A=M-D
        D=M
        @ARG
        M=D

        // LCL = * (FRAME-4)
        @4
        D=A
        @R13
        A=M-D
        D=M
        @LCL
        M=D

        // RET = * (FRAME-5)
        @5
        D=A
        @R13
        A=M-D
        A=M
        0;JMP
