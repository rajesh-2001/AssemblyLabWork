 .mod el small
 .stack 100h 
 .data
 n1 db 'Enter first number: $'    
 n2 db 'Enter second number: $'
 n3 db 'Enter third number: $' 
 r db 'Largest Number = $'
 
 .code
 main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,n1
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,n2
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,9
    lea dx,n3
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    ;Display Result
    
    mov ah,9
    lea dx,r
    int 21h 
    
    ;check statement
    
    cmp bl,bh
    jge a
    
    cmp bh,cl
    jge s2
    jmp s3
    
    a:
    cmp bl,cl
    jge s1 
    
    
    ;print n1
    s1:
    mov ah,2
    mov dl,bl
    int 21h 
    jmp exit
    
    ;print n2 
    s2:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit  
    
    ;printn3
    s3:
    mov ah,2
    mov dl,cl
    int 21h 
    jmp exit
    
    
    exit:
    mov ah,4ch 
    int 21h
    main endp
 end main