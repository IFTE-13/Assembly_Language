main proc
    mov ah, 2
    mov dl, 'a'
    int 21h
    
    call first 
    
   main endp

first proc
    mov ah, 2
    mov dl, 'b'
    int 21h
    
    ret  

end main