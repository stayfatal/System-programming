format ELF64
public _start

include 'func.asm'

section '.bss' writable
  place db 1

_start:
  pop rcx 
  cmp rcx, 1 
  je .l1 

  mov rdi,[rsp+8] 
  mov rax, 2 
  mov rsi, 0o 
  syscall 
  cmp rax, 0 
  jl .l1 
  
  mov r8, rax

  mov rdi,[rsp+16] 
  mov rax, 2 
  mov rsi, 577
  mov rdx, 777o
  syscall 
  cmp rax, 0 
  jl .l1 

  mov r9, rax

  mov rsi, [rsp+24]
  call str_number

  mov r10, rax

  xor rbx, rbx
.loop:
  mov rax, 0
  mov rdi, r8
  mov rsi, place
  mov rdx, 1 
  syscall

  cmp rax, 0
  je .l2

  mov cl, [place]
  add rcx, r10
  mov [place], cl
  
  mov rax, 1
  mov rdi, r9
  mov rsi, place
  mov rdx, 1
  syscall

  inc rbx 
  mov rax, 8
  mov rdi, r9
  mov rsi, rbx
  mov rdx, 0
  syscall

  mov rax, 8
  mov rdi, r8
  mov rsi, rbx
  mov rdx, 0
  syscall
  jmp .loop
   
.l2:
  mov rdi, r8
  mov rax, 3
  syscall

  mov rdi, r9
  mov rax, 3
  syscall

.l1:
  call exit