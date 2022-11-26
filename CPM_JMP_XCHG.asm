.MODEL SMALL
.STACK 100H
.DATA
MSG DB 0AH, 0DH, 'THANK YOU$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    
    MOV AH, 1
    INT 21H
    MOV BX, AX
    
    MOV AH, 1
    INT 21H
    MOV CX, AX  
    
    CMP BX, CX
    JG CHANGE
    JMP ELSE_
    
    CHANGE:
    XCHG BX, CX
             
    ELSE_:         
    MOV AH,2
    MOV DX, 0AH
    INT 21H
    MOV DX,0DH
    INT 21H
    MOV DX, BX
    INT 21H
    MOV DX, CX
    INT 21H
   
    LEA DX, MSG
    MOV AH, 9
    INT 21H