section .data
    msg db "Hello, world!", 10  ; 文字列と改行
    len equ $ - msg             ; 長さを計算

section .text
    global _start

_start:
    ; write(1, msg, len)
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; file descriptor: stdout
    mov rsi, msg        ; buffer
    mov rdx, len        ; length
    syscall

    ; exit(0)
    mov rax, 60         ; syscall: exit
    xor rdi, rdi        ; status 0
    syscall
