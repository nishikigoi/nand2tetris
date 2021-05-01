	// initialize
	@256
	D=A
	@SP
	M=D
	@300
	D=A
	@LCL
	M=D
	@400
	D=A
	@ARG
	M=D
	@3000
	D=A
	@THIS
	M=D
	@3010
	D=A
	@THAT
	M=D

     	// push constant 10
        @10
        D=A
	@SP
        AM=M+1
        A=A-1
        M=D

        // pop local 0
        @SP
        AM=M-1
        D=M
        @LCL
        A=M
        M=D

     	// push constant 21
        @21
        D=A
	@SP
        AM=M+1
        A=A-1
        M=D

     	// push constant 22
        @22
        D=A
	@SP
        AM=M+1
        A=A-1
        M=D

        // pop argument 2
        @ARG
        D=M
        @2
        D=D+A
        @i
        M=D
        @SP
        AM=M-1
        D=M
        @i
        A=M
        M=D

        // pop argument 1
        @ARG
        D=M
        @1
        D=D+A
        @i
        M=D
        @SP
        AM=M-1
        D=M
        @i
        A=M
        M=D

     	// push constant 36
        @36
        D=A
	@SP
        AM=M+1
        A=A-1
        M=D

        // pop this 6
        @THIS
        D=M
        @6
        D=D+A
        @i
        M=D
        @SP
        AM=M-1
        D=M
        @i
        A=M
        M=D

     	// push constant 42
        @42
        D=A
	@SP
        AM=M+1
        A=A-1
        M=D

     	// push constant 45
        @45
        D=A
	@SP
        AM=M+1
        A=A-1
        M=D

        // pop that 5
        @THAT
        D=M
        @5
        D=D+A
        @i
        M=D
        @SP
        AM=M-1
        D=M
        @i
        A=M
        M=D

        // pop that 2
        @THAT
        D=M
        @2
        D=D+A
        @i
        M=D
        @SP
        AM=M-1
        D=M
        @i
        A=M
        M=D

     	// push constant 510
        @510
        D=A
	@SP
        AM=M+1
        A=A-1
        M=D

        // pop temp 6
        @5
        D=M
        @6
        D=D+A
        @i
        M=D
        @SP
        AM=M-1
        D=M
        @i
        A=M
        M=D

     	// push local 0
        @0
        D=A
        @LCL
        A=D+M
        D=M
	@SP
        AM=M+1
        A=A-1
        M=D
