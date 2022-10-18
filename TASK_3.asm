.MODEL SMALL
.STACK 100H
.CODE  

MAIN PROC   
    MOV BX, 65 
    MOV CX, 90
    
TOP:
    MOV AH, 2
    MOV DX, BX
    INT 21H
    INC BX
    DEC CX
    
    CMP CX, 64
    JE NONE
    JNZ TOP
       
    NONE:
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
       