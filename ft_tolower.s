# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/19 14:21:54 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/19 14:23:14 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_tolower
global _ft_tolower

ft_tolower:
_ft_tolower:
	push    rbp
	mov     rbp, rsp

	mov     r11, rdi
	cmp     rdi, 65
	jl      .tolower_over
	cmp     rdi, 90
	jg      .tolower_over
	add     rdi, 32

.tolower_over:
	mov     rax, rdi
	mov     rdi, r11
	pop     rbp
	ret
