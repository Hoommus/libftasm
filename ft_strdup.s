# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/19 20:45:27 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/19 21:00:09 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_strdup
extern _ft_strlen

_ft_strdup:
	push        rbp
	mov         rbp, rsp

	call        _ft_strlen
	mov         rdi, rax    ; move desired size for malloc to its first register
	add         rdi, 1      ; add space for \0 at the end
	call        _malloc

	cmp         rax, 0
	je          .strdup_fail

	mov         rsi, rdi    ; move size to second register
	mov         rdi, rax    ; move pointer to first register
	sub         rsi, 1      ; ignore that \0 at the end
	call        _ft_strcat

.strdup_fail:
	pop         rbp
	ret
