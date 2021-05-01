	// initialize
	@256
	D=A
	@SP
	M=D

	// push constant 17
        @17
        D=A
	@SP
        AM=M+1
        A=A-1
        M=D

	// push constant 17
        @17
        D=A
	@SP
        AM=M+1
        A=A-1
        M=D

        // eq
        @SP
        AM=M-1
        D=M
        A=A-1
        D=M-D
        @eq$if_true0
        D;JEQ
        @eq$if_false0
        0;JMP
        (eq$if_true0)
        D=-1
        @eq$if_end0
        0;JMP
        (eq$if_false0)
        D=0
        (eq$if_end0)
        @SP
        A=M-1


        M=D
