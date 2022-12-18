.MODEL SMALL
.STACK 100H
.DATA 


M0 DB "BINARY:  $"
M1 DB 0AH, 0DH, "EVEN$"
M2 DB 0AH, 0DH, "ODD$"

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX, M0
    MOV AH, 09H
    INT 21H
    
    CALL DET
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP


DET PROC
    MOV AH,1
    INT 21H
    
    WHILE_: 
    
    CMP AL, 0DH 
    JE END_WHILE
    AND AL, 0FH
    SHL BX,1
    OR BL,AL
    INT 21H
    JMP WHILE_
    
     END_WHILE:
    
    
    TOP:
    TEST BL,1
    JZ EV
    LEA DX,M2
    MOV AH, 09H
    INT 21H
    JMP ET
    
    
    EV:
    LEA DX, M1
    MOV AH,09H
    INT 21H
    
    
    ET: 
    
    RET
  END MAIN