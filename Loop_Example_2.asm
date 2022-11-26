;Put the sum of the first 50 terms of the arithmetic sequence 1, 5, 9, 13, ... in DX

.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
        MOV CX, 49
        MOV AX, 1
        MOV DX, CX
        
        TOP:     
          ADD DX, 4
          ADD AX, CX
          LOOP TOP