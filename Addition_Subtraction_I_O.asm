org 100h   

main proc
    mov ah, 1  ;addition 
    int 21h
    mov bl, al
    int 21h
    mov cl, al
    add bl, cl
    sub bl, 48  
   
    mov ah, 2
    mov dl, bl
    int 21h
    
    mov ah,1    ;subtraction
    int 21h
    mov cl, al
    int 21h
    mov dl, al
    sub cl, d
    
    mov ah, 2
    mov dl, bl
    int 21h  
    
    mov ah,1    ;multiplication
    int 21h
    mov al, al
    int 21h
    mov cl, al
    mul cl
    
    mov ah, 2
    mov dl, al
    int 21h
        

