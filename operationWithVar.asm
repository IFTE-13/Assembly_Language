org 100h   

.DATA
a DB 4
b DB 2

.code
main proc
    mov ax,@DATA
    mov DS,ax
    mov bl, a
    mov cl, b
    add bl, cl
    
    mov dl, a
    sub dl, cl
    
    mov al, a
    mul cl
     
        

