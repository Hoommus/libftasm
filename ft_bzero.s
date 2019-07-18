# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/18 21:46:42 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/18 21:46:48 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_bzero

_ft_bzero:
	push    rbp
	mov     rbp, rsp

	mov     r11, 0
.bzero_condition:
	cmp     r11, rsi
	jge     .bzero_out
	mov     byte [rdi + r11], 0
	inc     r11
	jmp     .bzero_condition
.bzero_out:
	pop     rbp
	ret
