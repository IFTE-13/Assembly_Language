.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    MOV AH, 1
    INT 21H

    
    CMP AL, 1
        JE ODD
    CMP AL, 3
        JE ODD
    CMP AL, 2
        JE EVEN
    CMP AL, 4
        JE EVEN
        JMP END_CASE
    
    ODD:
        MOV DL, 'o'
        JMP DISPLAY
    EVEN:
        MOV DL, 'e'

    DISPLAY:    
    MOV AH, 2
    INT 21H 
    
    END_CASE:
    
    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN