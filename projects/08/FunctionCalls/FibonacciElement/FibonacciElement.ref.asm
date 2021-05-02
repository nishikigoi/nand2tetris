	// initialize
	@256
	D=A
	@SP
	M=D

        // call Main.fibonacci 1
        // push return-address
        @Sys.init$return_to0
        D=A
        @SP
        AM=M+1
        A=A-1
        M=D

        // push LCL
        @LCL
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // push ARG
        @ARG
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // push THIS
        @THIS
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // push THAT
        @THAT
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // ARG = SP-n-5
        @5
        D=A
        @1
        D=A+D
        @SP
        D=M-D
        @ARG
        M=D

        // LCL = SP
        @SP
        D=M
        @LCL
        M=D

        // goto f
        @Sys.init
        0;JMP

        // (return-address)
        (Sys.init$return_to0)

(Sys.init)

@4
D=A
@SP
AM=M+1
A=A-1
M=D

        // call Main.fibonacci 1
        // push return-address
        @Main.fibonacci$return_to0
        D=A
        @SP
        AM=M+1
        A=A-1
        M=D

        // push LCL
        @LCL
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // push ARG
        @ARG
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // push THIS
        @THIS
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // push THAT
        @THAT
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // ARG = SP-n-5
        @5
        D=A
        @1
        D=A+D
        @SP
        D=M-D
        @ARG
        M=D

        // LCL = SP
        @SP
        D=M
        @LCL
        M=D

        // goto f
        @Main.fibonacci
        0;JMP

        // (return-address)
        (Main.fibonacci$return_to0)

(WHILE)
@WHILE
0;JMP

(Main.fibonacci)

@0
D=A
@ARG
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

@2
D=A
@SP
AM=M+1
A=A-1
M=D

@SP
AM=M-1
D=M
A=A-1
D=M-D
@lt$if_true0
D;JLT
@lt$if_false0
0;JMP
(lt$if_true0)
D=-1
@lt$if_end0
0;JMP
(lt$if_false0)
D=0
(lt$if_end0)
@SP
A=M-1
M=D

@SP
AM=M-1
D=M
@IF_TRUE
D;JNE

@IF_FALSE
0;JMP

(IF_TRUE)
@0
D=A
@ARG
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

@LCL
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@5
D=A
@R13
A=M-D
A=M
0;JMP

(IF_FALSE)
@0
D=A
@ARG
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

@2
D=A
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

        // call Main.fibonacci 1
        // push return-address
        @Main.fibonacci$return_to1
        D=A
        @SP
        AM=M+1
        A=A-1
        M=D

        // push LCL
        @LCL
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // push ARG
        @ARG
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // push THIS
        @THIS
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // push THAT
        @THAT
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // ARG = SP-n-5
        @5
        D=A
        @1
        D=A+D
        @SP
        D=M-D
        @ARG
        M=D

        // LCL = SP
        @SP
        D=M
        @LCL
        M=D

        // goto f
        @Main.fibonacci
        0;JMP

        // (return-address)
        (Main.fibonacci$return_to1)

@0
D=A
@ARG
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

@1
D=A
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

        // call Main.fibonacci 1
        // push return-address
        @Main.fibonacci$return_to2
        D=A
        @SP
        AM=M+1
        A=A-1
        M=D

        // push LCL
        @LCL
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // push ARG
        @ARG
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // push THIS
        @THIS
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // push THAT
        @THAT
        D=M
        @SP
        AM=M+1
        A=A-1
        M=D

        // ARG = SP-n-5
        @5
        D=A
        @1
        D=A+D
        @SP
        D=M-D
        @ARG
        M=D

        // LCL = SP
        @SP
        D=M
        @LCL
        M=D

        // goto f
        @Main.fibonacci
        0;JMP

        // (return-address)
        (Main.fibonacci$return_to2)

@SP
AM=M-1
D=M
A=A-1
D=M+D
M=D

@LCL
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@5
D=A
@R13
A=M-D
A=M
0;JMP

