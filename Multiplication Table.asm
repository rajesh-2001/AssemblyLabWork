.model small
.stack 100h
.data 
msg1 db 'Enter a number: $'
msg2 db 'Multiplication Table: $'
n db ?
.code 
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov n,al 
    sub n,48
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
              
              
    mov cl,49  
    
    table:
    cmp cl,58
    jg exit
    
    ;display n
    mov ah,2
    mov dl,n
    add dl,48 
    int 21h
    
    ;display *
    mov ah,2
    mov dl,'*'
    int 21h
    
    ;display bl
    mov ah,2
    mov dl,cl
    int 21h
    
    ;display
    mov ah,2
    mov dl,'='
    int 21h 

    mov al,cl 
    sub al,48
    mul n  
    
    aam 
    mov bx,ax
    
    mov ah,2
    mov dl,bh
    add dl,48 
    int 21h
    
    mov ah,2
    mov dl,bl
    add dl,48
    int 21h
    
    
    ;display new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    inc cl
    jmp table
    exit:
    mov ah,4ch
    int 21h