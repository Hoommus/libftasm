# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/19 14:24:09 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/19 17:49:49 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_puts
global _ft_puts
extern _ft_strlen

ft_puts:
_ft_puts:
	push    rbp
	mov     rbp, rsp

	push    rdi
	call    _ft_strlen
	mov     rdx, rax
	pop     rsi

	mov     rax, 0x2000004 ; 'write' syscall number
	mov     rdi, 1         ; fd
	;       rsi              string pointer
	;       rdx              string len
	syscall

	mov     rax, 0x2000004
    mov     rdi, 1
    lea     rsi, [rel newline.nl]
    mov     rdx, 1
    syscall

	mov     rdi, rsi

	pop     rbp
	ret

segment .data
newline:
	.nl db 0xA
