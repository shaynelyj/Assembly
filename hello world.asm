;Print "Hello World"

section .data
	text db "Hello World",10

section .text
	global _start

_start:

	call _printText

	mov rax, 60
	mov rdi, 0
	syscall

_printText:

	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, 12
	syscall
	ret
