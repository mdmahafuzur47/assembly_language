.model small
.stack 100h
.data
a db 'Jump Concept: $'
b db 'Application Development: $'
c db 'Jumping to a label: $'
d db 'Jumping to a procedure: $'


.code 
main proc
    mov ax, @data
    mov ds, ax

    m:
    mov ah, 9
    lea dx, a
    int 21h
    jmp n

    n:
    ; new line
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    mov ah, 9
    lea dx, b
    int 21h
    jmp o

    o:
    ; new line
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    mov ah, 9
    lea dx, c
    int 21h

    exit:
    mov ah, 4ch
    int 21h
    main endp
end main