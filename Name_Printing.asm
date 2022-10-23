.model small

.stack 100h 

.data 

.code  
main proc 
   mov ah, 2
   mov dx, 'I'
   int 21h
   mov dx, 'F'
   int 21h
   mov dx, 'T'
   int 21h
   mov dx, 'E'
   int 21h
   mov dx, 'K'
   int 21h
   mov dx, 'H'
   int 21h
   mov dx, 'A'
   int 21h
   mov dx, 'R'
   int 21h
       
   mov ah,4ch
   int 21h
   main endp
end main
