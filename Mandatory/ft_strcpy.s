; refer to this

; https://web.stanford.edu/class/cs107/resources/x86-64-reference.pdf

; char *strcpy(char *restrict dst, const char *restrict src);
; Copy string src into dst. return dst.
; The programmer is responsible for allocating a destination buffer

; ptr is 8 bytes for a 64-bit system (1 byte = 8 bits) (we do BITS/8 to get BYTES)
; rdi = arg1 = dst
; rsi = arg2 = src
; rax = ret value

; rsi 	(NO brackets) 	=> the address/pointer where data is located (the big 64-bit value)
; [rsi] (WITH brackets) => the data at that address (usually a byte when using strings)

; al
; we use al because of no direct memory to memory moves in x86 
; Always: memory -> register -> memory

; we also need to save the original dst pointer or we will return the end of dst with this logic
; we save this pointer in rdx to later return it with rax

section .text
	global ft_strcpy

ft_strcpy:
	mov rdx, rdi
	jmp .loop_start

.loop_start:
	cmp byte [rsi], 0
	je .end
	mov al, byte [rsi]
	mov byte [rdi], al
	inc rsi
	inc rdi
	jmp .loop_start

.end:
	mov byte [rdi], 0
	mov rax, rdx
	ret






	