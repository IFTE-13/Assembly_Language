;Put the sum 100 + 95 + 90 + ... + 5 in AX.  Hints: Employ LOOP instructions to do the following. 

.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
        MOV CX, 19
        
        
        TOP: 
          MOV AX, 5
          MUL CX  
          MOV BX, 0
          ADD BX, AX
          LOOP TOP
         
    ADD BX, 100