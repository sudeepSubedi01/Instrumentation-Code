LHLD 8050H
//LXI H,0FFF
SPHL
LHLD 8052
//LXI H,000A
XCHG
LXI B,0
LXI H,0
AGAIN:
DAD SP
JNC DOWN
INX B
DOWN:
DCX D
MOV A,E
ORA D
JNZ AGAIN
SHLD 8054
MOV L,C
MOV H,B
SHLD 8056
HLT