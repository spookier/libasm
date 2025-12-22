section .text			; this means "the following bytes are executable instructions”	
	global ft_strlen	; this means "make ft_strlen" symbol available outside this file

ft_strlen:
	xor rax, rax		; xor makes every bit compare to itself = every bit is the same = result is 0
	jmp .loop_start		; we jump to function loop_start


.loop_start:
	cmp byte [rdi], 0	; rdi holds arg1 of the function (a string), so we compare the first byte to NULL
	je .end			; jump if equal (precedent instruction) to end function
	inc rdi			; increment rdi (increment our arg1 to the next letter)
	inc rax			; rax++ (we use this to return the string length)
	jmp .loop_start		; loop again

.end:
	ret			; return value from rax (the string length) - rax is ALWAYS the return

	

	