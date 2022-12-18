.DATA    
WEL DB 'Welcome to my Calculator$'
FA DB 0AH, 0DH, 'PLEASE USER ENTER DIGIT 1:', 0AH, 0DH, '$'
FB DB 0AH, 0DH, 'PLEASE USER ENTER DIGIT 2:', 0AH, 0DH, '$'
OUTPUT DB 0AH, 0DH, 'OUTPUT:', 0AH, 0DH, '$'
TNK DB 0AH, 0DH, 'THANKYOU FOR USING MY CALCULATOR$'

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
       
    LEA DX, OUTPUT         
    MOV AH, 9
    INT 21H 
    
    CALL TASK
    
    LEA DX, TNK
    MOV AH, 9
    INT 21H 
    
     
    
RET
MAIN ENDP   
TASK PROC
    ADD BX, CX
    SUB BX, 48 
    MOV AH, 2
    MOV DX, BX
    INT 21H
RET
TASK ENDP
END MAIN

    