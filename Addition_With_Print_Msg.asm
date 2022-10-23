.model small

.stack 100h 

.DATA  
msg  DB 0AH, 0DH, 'Sum of $'
msg2 DB ' and $'
msg3 DB ' is: $'

.code  
main proc 
   mov ah, 2
   mov dx, '#'
   int 21h 
   
   mov ah, 1
   int 21h
   mov bl, al
   int 21h
   mov cl, al
    
   
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   mov ax,@DATA
   mov ds, ax
   
   lea dx, msg
   mov ah,9
   int 21h 
   
   mov ah, 2
   mov dl, bl
   int 21h
   
   lea dx, msg2
   mov ah,9
   int 21h 
   
   mov ah, 2
   mov dl, cl
   int 21h
   
   lea dx, msg3
   mov ah,9
   int 21h
   
   add bl, cl
   sub bl, 48
      
   mov ah, 2
   mov dl, bl
   int 21h
   
   
       
   mov ah,4ch
   int 21h
   main endp
end main