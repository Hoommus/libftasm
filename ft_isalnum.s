# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/19 13:41:48 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/19 14:20:21 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text

global ft_isalnum
global _ft_isalnum
extern _ft_isalpha
extern _ft_isdigit

ft_isalnum:
_ft_isalnum:
	push    rbp
	mov     rbp, rsp

	call    _ft_isalpha
	cmp     rax, 0
	jg      .isalnum_succ  ; if alpha, return success
	call    _ft_isdigit
	cmp     rax, 0
	jle     .isalnum_fail  ; if not alpha and not digit, goto fail

.isalnum_succ:
	mov     rax, 1
	jmp     .isalnum_over
.isalnum_fail:
	mov     rax, 0
.isalnum_over:
	pop     rbp
	ret
