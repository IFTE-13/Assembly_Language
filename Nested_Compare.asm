.MODEL SMALL
.STACK 100H
.DATA

.CODE  
MAIN PROC
    MOV AX, 1
    MOV BX, 2
    MOV CX, 3
    
    CMP AX, BX
    JL SECOND
    JGE PRINT2
    
    
    SECOND:
    CMP BX, CX
    JL PRINT1
    JGE PRINT2
    
    
    PRINT:
    MOV AX, '0'
    MOV AH,2
    MOV DX,AX
    
    PRINT1:
    MOV BX, '0'
    MOV AH,2
    MOV DX,BX
    
    
    PRINT2:
       INT 21H 
       JMP EXIT
    
    EXIT: 
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN