.CODE
MAIN proc
    MOV AH, 1
    INT 21H  
    MOV BX, AX
    CALL TASK
RET
MAIN ENDP   
TASK PROC  
    SUB BX, 32
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    MOV DX, BX
    INT 21H
RET
TASK ENDP
END MAIN

    