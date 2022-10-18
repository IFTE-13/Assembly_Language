.MODEL SMALL
.STACK 100H
.DATA

.CODE  
MAIN PROC
    MOV AX, 1
    MOV BX, 2
    MOV CX, 3 
    
    
    MOV AH,2 
    
    CMP AX, BX
        JL ELSE
    CMP AX, CX
        JL ELSE1
        JMP ELSE2
        
        
    ELSE:  
    MOV AX, 0
    JMP DISPLAY
    
    ELSE1:
    MOV BX, 0
    JMP DISPLAY 
    
    ELSE2:
    MOV CX, 0
    
    DISPLAY:
    MOV DX, AX
    INT 21H
    JMP EXIT
    
    EXIT: 
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN