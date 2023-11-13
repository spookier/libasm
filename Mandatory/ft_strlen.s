section .text
		global ft_strlen

ft_strlen:
	xor rax, rax				; xor on the same register twice = sets value to 0

.loop:
	cmp byte [rdi + rax], 0		; argv gets stored in rdi, compare start of str + the offset(counter) with 0
	je .return					; if equal (if char byte at offset is '\0' character), jump to .ret and return value
	inc rax						; increment counter
	jne .loop					; if not equal, restart loop

.return:
	ret
