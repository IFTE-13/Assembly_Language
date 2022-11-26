XOR BX, BX 
MOV AH, 1 
INT 21H 

LOOP_: 
    CMP AL, 0DH 
    JE  END_LOOP
    AND AL, 0FH  
    SHL BX,1
    OR BL, AL
    INT 21H
    JMP LOOP_ 
    
END_LOOP: