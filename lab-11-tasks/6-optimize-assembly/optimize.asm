global runAssemblyCode

extern printf

section .data
    str: db "%d",10,13

section .text
runAssemblyCode:
    push ebp
    mov ebp, esp

    mov edi, [ebp + 12] ;N
    mov esi, [ebp + 8]; *a
    mov ecx,0

    mov eax,0 ; suma

L2:
    add eax,[esi + ecx*4]
    inc ecx
    cmp ecx, edi
    jl L2
    pop ebp
    ret
