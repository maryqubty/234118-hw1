.global _start

.section .text
_start:
#your code here
xor %rax,%rax    #sum
xor %rcx,%rcx    #counter
xor %rsi,%rsi

.loop:

       movl arr(,%rcx,4),%esi
       cmp $0,%esi
       je .end 
       add %rsi,%rax
       inc %rcx
       jmp .loop
       
.end:
     cmp $0,%rcx
     je .zero
     div %rcx
     xor %rdx,%rdx
     movl %eax,(avg)
     jmp .13
     

.zero:
      movl $0,(avg)
      jmp .13
      
.13:
      
      
