MVI C,08H
MVI A,01H
UP:
OUT 43H
ADI 02H
DCR C
JNZ UP
HLT