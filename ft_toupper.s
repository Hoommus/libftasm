# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/19 14:12:43 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/19 14:18:02 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_toupper

_ft_toupper:
	push    rbp
	mov     rbp, rsp

	mov     r11, rdi
	cmp     rdi, 97
	jl      .toupper_over
	cmp     rdi, 122
	jg      .toupper_over
	sub     rdi, 32

.toupper_over:
	mov     rax, rdi
	mov     rdi, r11
	pop     rbp
	ret
