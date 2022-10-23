.model small
.stack 100h
.data
A DB ?
B DB ?
.code
main proc 
    mov ax,@DATA
    mov ds,ax
    
    
    mov ah,1
    int 21h    
    mov A,al
    
    mov ah,2
    mov dl,0ah 
    int 21h
    mov dl,0dh
    int 21h
    
    mov al,A
    add al,32
    
    mov ah,2
    mov dx,ax   ;
    int 21h  
    
    mov ah,1
    int 21h     
    mov A,al
    
    mov ah,2
    mov dl,0ah  
    int 21h
    mov dl,0dh
    int 21h
    
    mov al,A
    sub al,32
    
    mov ah,2
    mov dx,ax   
    int 21h
       
    
    mov ah,4ch
    int 21h
    main endp
end main

