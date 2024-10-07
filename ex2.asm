global _start

section .data
	msg db "Hello, There! This is a string", 0x0a  ; 0x0a byte is hex for 10
	len equ $ - msg

section .text
_start:
	mov eax, 4 		; sys_write system call
	mov ebx, 1 		; stdout file descriptor
	mov ecx, msg 	;bytes to write
	mov edx, len 	; number of bytes to write
	int 0x80		; perform system call
