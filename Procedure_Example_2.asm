.DATA    
WEL DB 'Welcome USER$'
FA DB 0AH, 0DH, 'PLEASE USER ENTER LETTER1:', 0AH, 0DH, '$'
FB DB 0AH, 0DH, 'PLEASE USER ENTER LETER 2:', 0AH, 0DH, '$'   
FC DB 0AH, 0DH, 'PLEASE USER ENTER LETER 3:', 0AH, 0DH, '$'
OUTPUT DB 0AH, 0DH, 'OUTPUT:', 0AH, 0DH, '$'

.CODE
MAIN proc
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, WEL
    MOV AH, 9
    INT 21H 
    LEA DX, FA
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BX, AX
    
    LEA DX, FB 
    MOV AH, 9
    INT 21H 
    
    MOV AH, 1
    INT 21H
    MOV CX, AX
    
    LEA DX, FC 
    MOV AH, 9
    INT 21H 
    
    MOV AH, 1
    INT 21H
    
       
       
    LEA DX, OUTPUT         
    MOV AH, 9
    INT 21H 
    
    CALL TASK

    
    MOV BX, CX
    CALL TASK
    
    MOV BX, AX
    CALL TASK    
    
RET
MAIN ENDP   
TASK PROC   
    MOV AH, 2
    MOV DX,BX 
    INT 21H
RET
TASK ENDP
END MAIN

    