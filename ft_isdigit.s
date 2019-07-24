# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/19 13:24:52 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/19 13:55:49 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_isdigit
global _ft_isdigit

ft_isdigit:
_ft_isdigit:
	push    rbp
	mov     rbp, rsp

	cmp     rdi, 48
	jl      .isdigit_fail
	cmp     rdi, 57
	jg      .isdigit_fail

	mov     rax, 1
	jmp     .isdigit_over

.isdigit_fail:
	mov     rax, 0
.isdigit_over:
	pop     rbp
	ret
	
