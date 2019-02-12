%include "io.inc"

section .text
section .data
    before dd "h6ud0q83wk287j4f23ra8sv0m215k38e4ryu6ul7151733mf2455130u4dqxin1c", 0
    string dd "cryptii", 0
global CMAIN

decode_vigenere:
    push ebp
    mov ebp, esp
    mov esi, [ebp + 8]
    mov edi, [ebp + 12]   
loop2:
	xor al,al
	xor bl, bl
	xor dl, dl
    	mov bl, byte [esi]        
    	mov al, byte [edi]
	cmp bl, 'a'
	jl put_same
	cmp bl, 'z'
	jg put_same
	mov dl, 'a'
	cmp dl, al
	jg invers
        cmp al,bl
        jg sare
	sub al, 97                
	sub bl, al      	
	mov byte [esi], bl
	inc esi
	inc edi
	cmp byte [edi], 0
	je modifica
	cmp byte [esi], 0
	jne loop2
	leave
	ret
sare: 
    sub al, 97
    mov cl, bl
    sub cl, 97
    sub bl, cl
    sub al, cl
    add bl, al
    mov byte [esi], bl
    inc esi
    inc edi
    cmp byte [edi], 0
    je modifica
    cmp byte [esi], 0
    jne loop2
    leave
    ret
    
invers:
	sub dl, al
	sub bl, dl
	mov byte [esi], bl
	inc esi
	inc edi
	cmp byte [edi], 0
	je modifica
	cmp byte [esi], 0
	jne loop2
	leave
	ret
put_same:
	mov byte [esi], bl
	inc esi
	inc edi
	cmp byte [edi], 0
	je modifica
	cmp byte [esi], 0
	jne loop2
	leave
	ret
modifica:
	mov edi, [ebp + 12]
	cmp byte [esi], 0
	jne loop2
	leave
	ret

CMAIN:
    ;write your code here
    push ebp
    mov ebp, esp
   
    push string
    push before
    call decode_vigenere 
    add esp, 8
    PRINT_STRING before
    pop ebp
    ret