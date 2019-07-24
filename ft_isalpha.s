# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/18 21:54:14 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/18 22:06:04 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_isalpha
global _ft_isalpha

ft_isalpha:
_ft_isalpha:
	push    rbp
	mov     rbp, rsp

	cmp     rdi, 65
	jl      .isalpha_fail
	cmp     rdi, 90
	jle     .isalpha_succ
	cmp     rdi, 97
	jl      .isalpha_fail
	cmp     rdi, 122
	jg      .isalpha_fail

.isalpha_succ:
	mov     rax, 1
	jmp     .isalpha_over
.isalpha_fail:
	mov     rax, 0
.isalpha_over:
	pop     rbp
	ret
