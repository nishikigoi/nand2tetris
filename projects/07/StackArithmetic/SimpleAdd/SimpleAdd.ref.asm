	// initialize
	@256
	D=A
	@SP
	M=D

	// push constant 7
        @7
        D=A
	@SP
        AM=M+1
        A=A-1
        M=D

	// push constant 8
        @8
        D=A
	@SP
        AM=M+1
        A=A-1
        M=D

        // add
        @SP
        AM=M-1
        D=M
        @SP
        AM=M-1
        D=D+M
        @SP
        AM=M+1
        A=A-1
        M=D
