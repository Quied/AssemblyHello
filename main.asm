section .data

global _start

_start:


mov edx, len

mov ecx, msg
mov ebx, 1
mov eax, 4
int 0x80

mov eax, 1
int 0x80

section .data
msg db 'Hello, World', 0xa
len equ $ - msg

mov eax, 1 ; sys_exit
int 0x80 

mov edx, 4   ; size of msg
mov ecx, msg ; msg for out
mov ebx, 1   ; file desriptor
mov eax, 4   ; sys_write
int 0x80     ; kernel




