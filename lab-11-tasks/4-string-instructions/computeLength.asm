global computeLength
global computeLength2

section .text
computeLength:
    push ebp
    mov ebp, esp
    push edi
    push ecx
    push ebx
    ;push eax
    push edx
    xor eax, eax
    ;TODO: Implement byte count using a software loop
    mov edi, [ebp + 8]
    xor ecx,ecx
    mov ecx,0
loop1:
    inc edi
    inc ecx
    mov bl, byte [edi]
    cmp bl,0
    jne loop1
    mov eax,ecx
    pop edx
    pop ebx
    pop ecx
    pop edi
    
    mov esp, ebp
    pop ebp
    ret

computeLength2:
    push ebp
    mov ebp, esp
    mov esi, [ebp + 8]
    xor eax, eax
    ;TODO: Implement byte count using a hardware loop
    mov al, 0x00
    mov edi, [ebp + 8]
    repne scasb
    sub edi, [ebp + 8]
    dec edi
    mov eax,edi
    mov esp, ebp
    pop ebp
    ret
