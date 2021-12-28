[org 0x00] 
[bits 16]

section code

.main:
    mov eax, 0xb800
    mov es, eax

    mov byte [es:0x00], 'I' ; 0xb800 + 0x00 = 0xb800 
    mov byte [es:0x02], 'M' ; 0xb800 + 0x00 = 0xb800 
    mov byte [es:0x01], 0x50

jmp $

times 510 - ($ - $$) db 0x00 ; Pads the file with 0s, making the file the right size

db 0x55
db 0xaa