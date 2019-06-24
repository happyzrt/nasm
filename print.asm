slen:
    push ebx
    mov  ebx, eax
next:
    cmp byte[eax], 0
    jz finished
    inc eax
    jmp next
finished:
    sub eax, ebx
    pop ebx
    ret
print:
    push edx
    push ecx
    push ebx
    push eax
    call slen
    mov edx, eax
    pop eax
    mov ecx, eax
    mov ebx, 1
    mov eax, 4
    int 80h
    pop ebx
    pop ecx
    pop edx
    ret
