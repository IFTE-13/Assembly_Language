MOV AX, 1234H
MOV BX, 5678H
MOV CX, 9ABCH
MOV SP, 100H

PUSH AX
PUSH BX
XCHG AX, CX
POP CX
PUSH AX
POP BX