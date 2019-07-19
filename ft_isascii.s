# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/19 14:10:41 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/19 14:11:42 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isascii

_ft_isascii:
	push    rbp
	mov     rbp, rsp

	cmp     rdi, 0
	jl      .isascii_fail
	cmp     rdi, 127
	jg      .isascii_fail

.isascii_succ:
	mov     rax, 1
	jmp     .isascii_over
.isascii_fail:
	mov     rax, 0
.isascii_over:
	pop     rbp
	ret
