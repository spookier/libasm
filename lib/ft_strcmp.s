; int strcmp(const char *s1, const char *s2);
; strcmp function compares two strings s1 and s2
; strcmp returns an int

; ret 0	 	if s1 and s2 are equal
; ret negative	if s1 < s2
; ret positive	if s1 > s2

; so we need to compare each character and do a subtraction
; stop at the first difference (-1/+1)
; store the result into a variable 'difference'
; check if 'difference' -1/+1 or end of string
; if difference == 0 -> stay in loop


; rdi = arg1 = s1
; rsi = arg2 = s2
; rax = ret value


; UNSIGNED JUMPS
; ja  = arg1 > arg2
; jb  = arg1 < arg2


section .text
	global ft_strcmp

ft_strcmp:
	jmp .loop_start


.loop_start:

	; for '\0' and early termination
	cmp byte [rdi], 0
	je  .check_end          ; if jmp here = arg1 ended BUT did arg2 end too or just EOL?
	cmp byte [rsi], 0
	je  .positive         	; if jmp here = arg2 ended but arg1 didn't = arg1 > arg2


	; for positives
	mov al, byte [rdi]
	cmp al, byte [rsi]
	ja .positive

	; for negatives
	mov al, byte [rdi]
	cmp al, byte [rsi]
	jb .negative

	inc rdi
	inc rsi

	jmp .loop_start


.check_end:
	cmp byte [rsi], 0	; check if arg2 ended too 
	je  .equal            	; if jmp here = both ended = equal
	jmp .negative         	; if here, arg1 ended but arg2 didn't = arg1 < arg2

.negative:
	mov rax, -1
	ret

.positive:
	mov rax, 1
	ret

.equal:
	mov rax, 0
	ret
