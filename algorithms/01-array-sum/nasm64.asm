extern printf

section .data
    n:      dd 6
    arr:    dd 1, 2, 3, 4, 10, 11
    f:      db "%d", 10, 0

section .text
global _start

_start:

    ; int array_sum_result = array_sum(n, arr);
    mov     esi, [n]
    mov     rdi, arr
    call    array_sum

    ; System V AMD64 ABI calling convention is RDI, RSI...
    ; printf(f="%d\n", array_sum_result);
    push    rsi
    mov     rdi, f
    mov     rsi, rax
    xor     rax, rax
    call    printf
    pop     rsi

    ; exit
    xor     rdi, rdi
    mov     rax, 0x3c
    syscall

array_sum:
    ; rdi: &arr[0]
    ; esi: n 

    push    rbp
    mov     rbp, rsp

    mov     eax, 0              ; int sum = 0
    mov     ebx, 0              ; int i = 0
begin_loop:
    cmp     ebx, esi            ; while(i < n)
    jge     end_loop
    add     rax, [rdi + rbx*4]  ; sum += arr[i];
    inc     ebx                 ; i++
    jmp     begin_loop
end_loop:
    mov     rsp, rbp
    pop     rbp
    ret 
