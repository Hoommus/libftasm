# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/19 17:00:28 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/19 17:00:28 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_memset

_ft_memset:
	push        rbp
	mov         rbp, rsp

	mov         r11, 0
.memset_condition:
	cmp         r11, rdx
	jge         .memset_out
	mov byte    [rdi + r11], rsi
	inc         r11
	jmp         .memset_condition
.memset_out:
	pop         rbp
	ret
