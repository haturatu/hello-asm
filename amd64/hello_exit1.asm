section .data
    msg db "Hello, world!", 10
    len equ $ - msg

section .text
    global _start

_start:
    ; write(1, msg, len)
    mov rax, 1          ; syscall number: write
    mov rdi, 1          ; file descriptor: stdout
    mov rsi, msg        ; pointer to message
    mov rdx, len        ; message length
    syscall

    ; exit(1)
    mov rax, 60         ; syscall number: exit
    mov rdi, 1          ; status code = 1
    syscall

