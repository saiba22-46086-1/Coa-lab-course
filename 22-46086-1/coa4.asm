.model small
.stack 100h

.data
a db "Enter first num: $"  
b db 10,13,"Enter Second num: $" 
c db 10,13,"Enter third num: $"  
res db 10,13, "Biggest number: $"

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
    
    ;second num
    mov ah, 9
    lea dx, b
    int 21h
    
    mov ah, 1
    int 21h
    mov bh, al
    
    ;third num
    mov ah, 9
    lea dx, c
    int 21h
    
    mov ah, 1
    int 21h
    mov cl, al
     
     
    mov ah, 9
    lea dx, res
    int 21h 
    
    cmp bl, bh
    jg comp1
    jl comp2
    
  comp1:
    cmp bl, cl
    jg printbl
    jl printcl
    
    
  comp2:
    cmp bh, cl
    jg printbh
    jl printcl
    
    
    
  printbl:
    mov ah, 2 
    mov dl, bl
    int 21h
    jmp Exit 
  
    
  printbh:
    mov ah, 2 
    mov dl, bh
    int 21h 
    jmp Exit
    
    
  printcl:
    mov ah, 2 
    mov dl, cl
    int 21h
    jmp Exit
    
    
    
  
  
    
Exit:     
    mov ah, 4ch
    int 21h
    main endp
end main
