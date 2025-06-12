.model small
.stack 100h
.data
a db 'Enter first number: $'
b db 10,13,'Enter second number: $'
c db 10,13,'The sum is: $'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 9
    lea dx, a
    int 21h

    mov ah, 1
    int 21h
    mov bx, ax

    


    mov ah, 9
    lea dx, b
    int 21h
    
    mov ah, 1
    int 21h
    mov bh, al


    add bl, bh ; bl = bl + bh
    sub bl, '0'  ; Convert ASCII to integer

    mov ah, 9
    lea dx, c
    int 21h
    mov ah, 2
    mov dl, bl
    int 21h

    exit:
    mov ah, 4ch
    int 21h
    main endp
end main