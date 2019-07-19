global _ft_strlen

_ft_strlen:
	push      rbp
	mov       rbp, rsp

	push      rdi
	mov       rax, 0

.strlen_loop:
	cmp byte  [rdi + rax], 0
	je        .strlen_over
	inc       rax
	jmp       .strlen_loop

.strlen_over:
    pop       rdi
    pop       rbp
    ret