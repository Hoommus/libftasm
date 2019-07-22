; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_memcpy.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2019/07/20 19:52:46 by vtarasiu          #+#    #+#              #
;    Updated: 2019/07/20 20:29:30 by vtarasiu         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

_ft_memcpy:
	push        rbp
	mov         rbp, rsp

	push        rdi
	push        rsi

	mov         rcx, rdx
	rep movsb

	pop         rsi
	pop         rdi
	mov         rax, rdi
	pop         rbp
	ret