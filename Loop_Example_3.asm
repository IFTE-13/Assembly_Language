;Put the sum 100 + 95 + 90 + ... + 5 in AX.  Hints: Employ LOOP instructions to do the following. 

.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
        MOV CX, 19
        MOV AX, 5
        
        TOP:
          MUL CX
          ADD AX, AX
          LOOP TOP
         
        ADD AX, 100