.model small
.stack 100h

.data
a db "Input a Upper case character: $"   
b db 10,13, "Lower Case character: $"

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, a
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
     
     
    mov ah, 9
    lea dx, b
    int 21h
    
    add bl, 32
    
    mov ah, 2 
    mov dl, bl
    int 21h
    
  
  
    
Exit:     
    mov ah, 4ch
    int 21h
    main endp
end main


