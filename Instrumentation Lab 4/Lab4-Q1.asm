; data from 8040H: 40H, F9H, A4H, B0H, 99H, 92H, 82H, F8H, 00H, 10H 40
MVI A, 80H
OUT 43H
LXI H, 8040H; base address of data
MVI C, 05H; digit counter
mainLoop: 
MOV A,M
CALL DISPLAY
CALL DELAY	; delay of 0.5sec
CALL DELAY	; delay of 0.5sec
INX H
DCR C
JNZ mainLoop
RST 5

DISPLAY:
 MVI B, 08H; bit counter
innerLoop: RLC
MOV E,A
OUT 41H; Port B output
MVI A, 01H
OUT 42H; Port C clock high
DCR A
OUT 42H; Port C clock low
MOV A,E
DCR B
JNZ innerLoop
RET

DELAY: MVI B, 9BH
L3: MVI D, 9BH
L2: MVI E, 0BH
L1: DCR E
JNZ L1
DCR D
JNZ L2
DCR B
JNZ L3
RET