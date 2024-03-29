# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/19 14:01:37 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/19 18:39:30 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_isprint
global _ft_isprint

ft_isprint:
_ft_isprint:
	push    rbp
	mov     rbp, rsp

	cmp     rdi, 32
	jl      .isprint_fail
	cmp     rdi, 126
	jg      .isprint_fail

.isprint_succ:
	mov     rax, 1
	jmp     .isprint_over
.isprint_fail:
	mov     rax, 0
.isprint_over:
	pop     rbp
	ret
	
