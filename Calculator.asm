.model small
.stack 100h
.data

m1 db '1.Sumation$'
m2 db '2. Subtraction$'                                                        
m3 db '3. Multiplication$'
m4 db '4. Division$'
m5 db '5. Exit$'

s1 db 'Choose your option: $'
n1 db 'Enter first number: $'
n2 db 'Enter second number: $'
r db 'Result = $'

.code 
main proc
    mov ax,@data
    mov ds,ax

