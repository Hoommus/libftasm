# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/18 21:46:42 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/20 12:31:43 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_bzero
extern _ft_memset

_ft_bzero:
	push    rbp
	mov     rbp, rsp

	mov     rdx, rsi
	mov     rsi, 0
	call    _ft_memset

	pop     rbp
	ret
