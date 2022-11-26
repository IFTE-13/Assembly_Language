;Read a character and display it 50 times on the next line. Hints: use LOOP instructions and put cx = 50

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
        MOV BL, AL  
        
        MOV AH, 2
        MOV DL, 0AH
        INT 21H
        MOV DL, 0DH
        INT 21H
        
        MOV CX, 50
        
        TOP:
          MOV AH, 2
          MOV DL, BL
          INT 21H
          LOOP TOP
          
        MOV AH, 2
        MOV DL, 0AH
        INT 21H
        MOV DL, 0DH
        INT 21H 
          
        LEA DX, MSG
        MOV AH, 9
        INT 21H