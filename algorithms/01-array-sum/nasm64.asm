extern printf

exit:   equ     0x3c

section .data
    n:      dd 6    ; array length
    arr:    dd 1, 2, 3, 4, 10, 11
    format: db "%d", 10, 0

section .text
global _start

_start:

    ; System V AMD64 ABI calling convention is RDI, RSI...

    ; int array_sum_result = array_sum(arr, n);
    mov     rdi, arr
    mov     esi, [n]
    call    array_sum

    ; printf(format="%d\n", array_sum_result=rax);
    push    rsi
    mov     rdi, format
    mov     rsi, rax
    xor     rax, rax            ; required by V AMD64 ABI for variadic functions
    call    printf
    pop     rsi

    ; exit with 0 as exit status
    xor     rdi, rdi
    mov     rax, exit 
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
    ret                         ; return sum
