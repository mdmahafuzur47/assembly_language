.model small
.stack 100h
.data
    m db 'Hello, World Mafuz !', '$'
.code
main proc
    ; 1-> single key input
    ; 2-> single character output
    ; 9-> string output

    mov ax,@data
    mov ds,ax

    mov ah, 9
    lea dx, m
    int 21h

    exit:
    mov ah, 4ch
    int 21h
    main endp
end main