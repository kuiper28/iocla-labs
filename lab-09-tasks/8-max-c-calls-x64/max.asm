section .text

global get_max

get_max:
	push rbp
	mov rbp, rsp
  push rbx
	; [ebp+8] is array pointer
	; [ebp+12] is array length

	mov rbx, rdi
	mov rcx, rsi
	mov R10, rdx
	xor rax, rax

compare:
	cmp eax, [rbx+rcx*4-4]
	jge check_end
	mov eax, [rbx+rcx*4-4]
  mov [rdx], rcx
	check_end:
	loopnz compare

	leave
	ret
