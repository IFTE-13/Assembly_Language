.model small

.stack 100h 

.DATA  
msg DB 0AH, 0DH, 'Enter three charcters: $'
A DB ?

.code  
main proc
   mov ax,@DATA
   mov ds, ax
   
   lea dx, msg
   mov ah,9
   int 21h

   mov ah, 1
   int 21h
   mov bx, ax
   
   mov ah, 2
   mov dx,' '
   int 21h
   
   mov ah, 1
   int 21h
   mov cx, ax
   
   mov ah, 2
   mov dx,' '
   int 21h 
   
   mov ah, 1
   int 21h
   mov A, al
   
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   mov ah, 2
   mov dx,bx
   int 21h
   
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   mov ah, 2
   mov dx,cx
   int 21h 
    
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   mov ah, 2
   mov dl,A
   int 21h 
       
   mov ah,4ch
   int 21h
   main endp
end main
