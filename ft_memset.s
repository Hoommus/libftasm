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

	push        rdi

	mov         rcx, rdx
	mov         rax, rsi
	rep stosb

    pop         rdi
	pop         rbp
	ret
