.global _start

.section .text
_start:
xor %rax, %rax
xor %rbx, %rbx
movq num, %rax
mov $64, %ecx
.loop:
     test %ecx, %ecx
     je .L3
     sal $1, %rax
     jb .inc_num
     dec %ecx
     jmp .loop
.inc_num:
        inc %ebx
        dec %ecx
        jmp .loop 

.L3:
    movl %ebx, countBits
end:

