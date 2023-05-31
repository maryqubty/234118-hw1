.global _start

.section .text
_start:
#your code here
lea source, %rax
lea destination, %rbx
movl num, %edx
test %edx, %edx
    js end
loop:
    test %edx, %edx
    je end
    movb (%rax), %cl
    movb %cl, (%rbx)
    inc %rax 
    inc %rbx
    dec %edx
    jmp loop 
end:
    
