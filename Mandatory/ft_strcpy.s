section .text
		global ft_strcpy 

								; rdi = argv1 (dest)  
								; rsi = argv2 (src)

ft_strcpy:
	xor rcx, rcx				; set value to 0 !! DONT USE rax since al is a lower part of rax

.loop:
	cmp byte [rsi + rcx], 0		; check if src char is null
	je .return					; if null, jump to .ret
	jmp .copy					; if not, jump to .copy

.copy:
	mov al, [rsi + rcx] 		
	mov [rdi + rcx], al
	inc rcx
	jmp .loop

.return:
	mov byte [rdi + rcx], 0
	mov rax, rdi                ; return pointer to destination string (man 3 strcpy)
	ret
