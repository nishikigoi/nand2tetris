@256
D=A
@SP
M=D

@17
D=A
@SP
AM=M+1
A=A-1
M=D

@17
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

@17
D=A
@SP
AM=M+1
A=A-1
M=D

@16
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
@eq$if_true1
D;JEQ
@eq$if_false1
0;JMP
(eq$if_true1)
D=-1
@eq$if_end1
0;JMP
(eq$if_false1)
D=0
(eq$if_end1)
@SP
A=M-1
M=D

@16
D=A
@SP
AM=M+1
A=A-1
M=D

@17
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
@eq$if_true2
D;JEQ
@eq$if_false2
0;JMP
(eq$if_true2)
D=-1
@eq$if_end2
0;JMP
(eq$if_false2)
D=0
(eq$if_end2)
@SP
A=M-1
M=D

@892
D=A
@SP
AM=M+1
A=A-1
M=D

@891
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
@lt$if_true3
D;JLT
@lt$if_false3
0;JMP
(lt$if_true3)
D=-1
@lt$if_end3
0;JMP
(lt$if_false3)
D=0
(lt$if_end3)
@SP
A=M-1
M=D

@891
D=A
@SP
AM=M+1
A=A-1
M=D

@892
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
@lt$if_true4
D;JLT
@lt$if_false4
0;JMP
(lt$if_true4)
D=-1
@lt$if_end4
0;JMP
(lt$if_false4)
D=0
(lt$if_end4)
@SP
A=M-1
M=D

@891
D=A
@SP
AM=M+1
A=A-1
M=D

@891
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
@lt$if_true5
D;JLT
@lt$if_false5
0;JMP
(lt$if_true5)
D=-1
@lt$if_end5
0;JMP
(lt$if_false5)
D=0
(lt$if_end5)
@SP
A=M-1
M=D

@32767
D=A
@SP
AM=M+1
A=A-1
M=D

@32766
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
@gt$if_true6
D;JGT
@gt$if_false6
0;JMP
(gt$if_true6)
D=-1
@gt$if_end6
0;JMP
(gt$if_false6)
D=0
(gt$if_end6)
@SP
A=M-1
M=D

@32766
D=A
@SP
AM=M+1
A=A-1
M=D

@32767
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
@gt$if_true7
D;JGT
@gt$if_false7
0;JMP
(gt$if_true7)
D=-1
@gt$if_end7
0;JMP
(gt$if_false7)
D=0
(gt$if_end7)
@SP
A=M-1
M=D

@32766
D=A
@SP
AM=M+1
A=A-1
M=D

@32766
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
@gt$if_true8
D;JGT
@gt$if_false8
0;JMP
(gt$if_true8)
D=-1
@gt$if_end8
0;JMP
(gt$if_false8)
D=0
(gt$if_end8)
@SP
A=M-1
M=D

@57
D=A
@SP
AM=M+1
A=A-1
M=D

@31
D=A
@SP
AM=M+1
A=A-1
M=D

@53
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

@112
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

@SP
A=M-1
D=-M
M=D

@SP
AM=M-1
D=M
A=A-1
D=M&D
M=D

@82
D=A
@SP
AM=M+1
A=A-1
M=D

@SP
AM=M-1
D=M
A=A-1
D=M|D
M=D

@SP
A=M-1
D=!M
M=D

