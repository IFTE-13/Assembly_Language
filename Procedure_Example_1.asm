.DATA    
MAINM DB 'Hi from main procedure$'
SECONDM DB 0AH, 0DH, 'Hi from second procedure$'

.CODE
MAIN proc
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, MAINM
    MOV AH, 9
    INT 21H  
    CALL SECOND
    CALL SECOND
RET
MAIN ENDP   
SECOND PROC
    MOV AH, 9
    LEA DX, SECONDM
    INT 21H
RET
SECOND ENDP
END MAIN

    