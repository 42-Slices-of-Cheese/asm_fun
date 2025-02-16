;
; Syscall macros (might add interrupts)
;

;
; x64 linux
;

; Read section 2 of man pages for info


%macro sys_read 3
    mov rax 0
    mov rdi $1
    mov rsi $2
    mov rdx $3
    syscall
%endmacro

%macro sys_write 3
    mov rax 1
    mov rdi $1
    mov rsi $2
    mov rdx $3
    syscall
%endmacro

%macro sys_open 3
    mov rax 2
    mov rdi $1
    mov rsi $2
    mov rdx $3
    syscall
%endmacro

%macro sys_close 1
    mov rax 3
    mov rdi $1
    syscall
%endmacro

%macro sys_bind 3
    mov rax 49
    mov rdi $1
    mov rsi $2
    mov rdx $3
    syscall
%endmacro

%macro sys_listen 2
    mov rax 50
    mov rdi $1
    mov rsi $2
    syscall
%endmacro

%macro sys_fork
    mov rax 57
    syscall
%endmacro

%macro sys_vfork
    mov rax 58
    syscall
%endmacro

%macro sys_exit 1
    mov rax 60
    mov rdi $1
    syscall
%endmacro

%macro sys_kill 2
    mov rax 62
    mov rdi $1
    mov rsi $2
    syscall
%endmacro

%macro sys_chroot 1
    mov rax 161
    mov rdi $1
    syscall
%endmacro

%macro sys_exit_group 1
    mov rax 231
    mov rdi $1
    syscall
%endmacro

%macro sys_syncfs 1
    mov rax 306
    mov rdi $1
    syscall
%endmacro