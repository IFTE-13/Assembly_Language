.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    XOR AX, AX
    MOV CX, 8
    MOV BX, 11001100B
    
    TOP:
    ROL BX, 1
    JNC NEXT
    INC AX
    
    NEXT:
    LOOP TOP
    
    EXIT:
    MOV AH, 02
    ADD AX, 48
    MOV AH, 2
    MOV DX, AX
    INT 21H
    
    MAIN ENDP
END MAIN
    
        