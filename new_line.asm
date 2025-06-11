.model small
.stack 100h
.data

.code
main proc
    mov ah,1
    int 21h
    mov bl, al

    ;new line
    mov ah, 2
    mov dl, 10 ; ASCII code for new line feed
    int 21h
    mov dl, 13 ; ASCII code for carriage return
    int 21h

    mov ah, 1
    int 21h
    mov bh, al

    ;new line
    mov ah, 2
    mov dl, 10 ; ASCII code for new line feed
    int 21h
    mov dl, 13 ; ASCII code for carriage return
    int 21h


    mov ah, 2
    mov dl, bl
    int 21h


    ;new line
    mov ah, 2
    mov dl, 10 ; ASCII code for new line feed
    int 21h
    mov dl, 13 ; ASCII code for carriage return
    int 21h

    mov ah, 2
    mov dl, bh
    int 21h


    exit:
    mov ah, 4ch
    int 21h
    main endp
end main