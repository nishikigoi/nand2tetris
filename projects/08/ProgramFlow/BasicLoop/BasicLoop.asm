@0
D=A
@SP
AM=M+1
A=A-1
M=D

@LCL
D=M
@0
D=D+A
@i
M=D
@SP
AM=M-1
D=M
@i
A=M
M=D

(LOOP_START)
@0
D=A
@ARG
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

@0
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

@LCL
D=M
@0
D=D+A
@i
M=D
@SP
AM=M-1
D=M
@i
A=M
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

@ARG
D=M
@0
D=D+A
@i
M=D
@SP
AM=M-1
D=M
@i
A=M
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
@LOOP_START
D;JNE

@0
D=A
@LCL
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

