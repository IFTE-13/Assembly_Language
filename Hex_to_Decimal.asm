.MODEL SMALL
.STACK 100H
.DATA
A DB 'INPUT A HEX DIGIT: $'
B DB 'IN DECIMAL: $'     
Y DB 0AH, 0DH, 'WANT TO DO AGAIN?(Y/N) $'

.CODE
MAIN PROC  
    MOV AX, @DATA
    MOV DS, AX
    
    CALL CONVERSION  

   
    MOV AH, 9
    LEA DX, Y
    INT 21H
    
    MOV AH, 1 
    INT 21H
    MOV CL, AL
    CMP CL, 'Y'
    JE CARRY
    CMP CL, 'y'
    JE CARRY 
    JMP EXIT

CARRY:
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    CALL CONVERSION 

    MAIN ENDP
JMP EXIT
    
CONVERSION PROC
    
    
    MOV AH, 9
    LEA DX, A
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    SUB BL, 17D     ; ASCII OF A = 65 BUT IN DECIMAL STRING '0'    
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    MOV AH, 9
    LEA DX, B
    INT 21H
    
    
    MOV DL, 49D   
    MOV AH, 2 
    INT 21H
    MOV DL, BL
    INT 21H 
RET
CONVERSION ENDP
EXIT:
    MOV AH, 4CH
    INT 21H
END MAIN
    
    