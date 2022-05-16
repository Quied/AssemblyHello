section .data				
		userMsg db 'Num: '			; Take a num
		lenUserMsg equ $=userMsg	; msg size
		dispMsg db 'This:'
		lenDispMsg equ $-dispMsg


section .bss	; empty data
		num resb 5

section .text
		global _start

_start:		; take data
		mov eax, 4
		mov ebx, 1
		mov ecx, userMsg
		mov edx, lenUserMsg
		int 80h

		; read and save
		mov eax, 3 
		mov ecx, 2
		mov ecx, num
		mov edx, 5 ; 5 bytes
		int 80h
		
		; out num
		mov eax, 4
		mov ebx, 1
		mov ecx, num
		mov edx, 5
		int 80h

		; exit
		mov eax, 1
		mov ebx, 0
		int 80h



