MOV CX, 8
MOV AL, 11011100B
TOP:
    SHL AL, 1
    RCR BL, 1
    LOOP TOP
MOV AL, BL