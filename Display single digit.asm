section .data
	digit db 0,10

section .text
	global _start

_start:
	
	call _displaynum

	mov rax, 60
	mov rdi, 0
	syscall

_displaynum:

	add rax, 52
	mov [digit], al

	mov rax, 1
	mov rdi, 1
	mov rsi, digit
	mov rdx, 2
	syscall
	ret
