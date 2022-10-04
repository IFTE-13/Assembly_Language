.model small

.stack 100h 

.DATA  
msg DB 0AH, 0DH, 'Simple message$'

.code  
main proc 
   mov ax,@DATA
   mov ds, ax
   
   lea dx, msg
   mov ah,9
   int 21h
       
   mov ah,4ch
   int 21h
   main endp
end main