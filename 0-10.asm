.model small
.stack 100h
.data 
msg db "Values: $"
rem db ?
i dw 0

.code
main proc
     mov ax,@data
     mov ds,ax
     
     mov ah,9
     lea dx,msg
     int 21h 
     
     loop:
     cmp i,11
     jge exit
     jmp stage2
      
     stage2:
     mov ah,0
     mov ax,i
     mov bl,10
     div bl
     mov rem,ah
     
     mov ah,2 
     add al,48
     mov dl,al
     int 21h 
     
     mov ah,2
     add rem,48
     mov dl,rem  
     int 21h
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
     inc i
     jmp loop  
     exit:
     mov ah,4ch
     int 21h
     main endp
end main