.model small
.stack 100h
.data 
msg1 db 'Enter a number: $' 
msg2 db 'Revese number: $'
msg3 db ?
n dw ?

.code 
main proc
    mov ax,@data 
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
   
    mov cx,0 
    
    mov ah,1
    int 21h
    
    input:
    cmp al,0dh
    je end_input
    push ax  
    inc cx
    int 21h 
    jmp input
    
    end_input:
    mov ah,2 
    mov dl,10
    int 21h
    mov dl,13 
    int 21h
    
    jcxz exit
    
    output:
    pop dx
    int 21h
    loop output
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main


