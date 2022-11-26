.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
        MOV CX, 255
        MOV AH, 2
        
    TOP: 
        MOV DX, CX
        INT 21H
        LOOP TOP 