.model small
.stack 100h
.data

.code
main proc

               mov  ah, 1
               int  21h
               mov  bl, al

               mov  ah, 2
               mov  dl, 10
               int  21h
               mov  dl, 13
               int  21h

               sub bl, '0'  ; Convert ASCII to integer

               mov  cx, 0
               mov  cl, bl
    loop_start:
               mov  ah, 2
               mov  dl, "M"
               int  21h
               loop loop_start


    exit:      
               mov  ah, 4ch
               int  21h
main endp
end main
