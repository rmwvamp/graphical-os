[org 0x00] ; declaring origin
[bits 16]

section code

.init:
    mov eax, 0xb800 ; moving a value to eax register to further move to es register,0xb800 shows the first value of the character
    mov es,eax ; moving value to es register
    mov eax,0 ; set eax to 0 equivalent to i=0


.clear:
    mov byte[es:eax],0;Move blank character to current text address
    inc eax
    mov byte[es:eax],0x30; Move the bg color and character colour to the next address
    inc eax

    cmp eax,2*25*80 ; screen has 80 characters 25 lines. we have 2 bytes for each character

    jl .clear
.main: 
    mov byte [es:0x00], 'H'; 0xb800+0x000 doesn't matter, would change
    mov byte [es:0x01], 0x30; in "x030" "3"represent for bg color. "0" represents for text color
jmp $ 

times 510- ($ - $$) db 0x00; Pads the file with 0's, making it the right size of 512 byte

db 0x55 ; Tells computer that it is an executable file
db 0xaa ;  Tells computer that it is an executable file
