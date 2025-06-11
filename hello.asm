data segment use16
mesg db 'Hello, World Mafuz!', '$'
data ends
code segment use16
    assume cs:code, ds:data
beg:
    mov ax, data
    mov ds, ax
    mov ah,9
    mov dx, offset mesg
    int 21h
    mov ah, 4ch
    int 21h
code ends
end beg