@256
D=A
@SP
M=D

@Sys.init$return_to0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(Sys.init$return_to0)

(Sys.init)

@4000
D=A
@SP
AM=M+1
A=A-1
M=D

@SP
AM=M-1
D=M
@THIS
M=D

@5000
D=A
@SP
AM=M+1
A=A-1
M=D

@SP
AM=M-1
D=M
@THAT
M=D

@Sys.main$return_to1
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.main
0;JMP
(Sys.main$return_to1)

@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(LOOP)
@LOOP
0;JMP

(Sys.main)
@R13
M=0
(Sys.main$loop_begin)
@R13
D=M
@LCL
A=D+M
M=0
@R13
MD=M+1
@5
D=D-A
@Sys.main$loop_begin
D;JLE
@5
D=A
@SP
M=D+M

@4001
D=A
@SP
AM=M+1
A=A-1
M=D

@SP
AM=M-1
D=M
@THIS
M=D

@5001
D=A
@SP
AM=M+1
A=A-1
M=D

@SP
AM=M-1
D=M
@THAT
M=D

@200
D=A
@SP
AM=M+1
A=A-1
M=D

@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

@40
D=A
@SP
AM=M+1
A=A-1
M=D

@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

@6
D=A
@SP
AM=M+1
A=A-1
M=D

@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

@123
D=A
@SP
AM=M+1
A=A-1
M=D

@Sys.add12$return_to2
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.add12
0;JMP
(Sys.add12$return_to2)

@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
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

@1
D=A
@LCL
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

@2
D=A
@LCL
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

@3
D=A
@LCL
A=D+M
D=M
@SP
AM=M+1
A=A-1
M=D

@4
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
AM=M-1
D=M
A=A-1
D=M+D
M=D

@SP
AM=M-1
D=M
A=A-1
D=M+D
M=D

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
@5
D=A
@R13
A=M-D
D=M
@R14
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
@R14
A=M
0;JMP

(Sys.add12)

@4002
D=A
@SP
AM=M+1
A=A-1
M=D

@SP
AM=M-1
D=M
@THIS
M=D

@5002
D=A
@SP
AM=M+1
A=A-1
M=D

@SP
AM=M-1
D=M
@THAT
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

@12
D=A
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
@R13
M=D
@5
D=A
@R13
A=M-D
D=M
@R14
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
@R14
A=M
0;JMP

