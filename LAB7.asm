;MOV AX, 11111111B
;AND AX, 01111111B  

;MOV AX, 01111110B
;OR AX, 11111111B

;MOV AX, 01111110B
;XOR AX, 8000H 

;MOV AX, 01010101B
;NOT AX
           
;MOV AL, 00000101B
;TEST AL, 1
;JZ BELOW
;BELOW:

;MOV DH, 10001010
;MOV CL, 3
;SHL DH, CL

;MOV CL, 3
;SAL AX, CL

;MOV DH, 8AH
;MOV CL, 2
;SHR DH, CL

;MOV AX,65143 
;MOV CL,2 
;SHR AX,CL 

;XOR AX, AX
;MOV CX, 16
;TOP:
;    ROL BX, 1
;    JNC NEXT
;    INC AX
;NEXT:
;    LOOP TOP

MOV DH, 8AH
MOV CL, 3
RCR DH, CL