global start

section .text
bits 32
start:
    ; point the first entry of the level 4 page table to the first entry
    ; p3 table
    mov eax, p3_table
    or eax, 0b11,
    mov dword [p4_table + 0], eax
    ; Point the first entry of the level 3 page table to the first entry in the
    ; p2 table
    mov eax, p2_table
    or eax, 0b11
    mov dword [p3_table + 0], eax
    ; point each page table level two entry to a page
    mov ecx, 0         ; counter variable
    mov word [0xb8000], 0x0248 ; H
    mov word [0xb8002], 0x0265 ; e
    mov word [0xb8004], 0x026c ; l
    mov word [0xb8006], 0x026c ; l
    mov word [0xb8008], 0x026f ; o
    mov word [0xb800a], 0x022c ; ,
    mov word [0xb800c], 0x0220 ;
    mov word [0xb800e], 0x0277 ; w
    mov word [0xb8010], 0x026f ; o
    mov word [0xb8012], 0x0272 ; r
    mov word [0xb8014], 0x026c ; l
    mov word [0xb8016], 0x0264 ; d
    mov word [0xb8018], 0x0221 ; !
    hlt

section .bss

align 4096

p4_table:
  resb 4096
p3_table:
  resb 4096
p2_table:
  resb 4096
