.MODEL SMALL
.STACK 100H 

.DATA
MSG DB 'FFh$' 
MSG1 DB '0$'

.CODE 
MAIN PROC   
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, 1
   
    
    CMP AX, 0
    JL print
    JGE else
    
    print: 
    LEA DX, MSG
    MOV AH, 9
    INT 21H 
    JMP EXIT
    
    else:
    LEA DX, MSG1 
    MOV AH, 9
    INT 21H 
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
       