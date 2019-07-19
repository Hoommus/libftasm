;# **************************************************************************** #
;#                                                                              #
;#                                                         :::      ::::::::    #
;#    ft_strcat.s                                        :+:      :+:    :+:    #
;#                                                     +:+ +:+         +:+      #
;#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
;#                                                 +#+#+#+#+#+   +#+            #
;#    Created: 2019/07/19 14:23:52 by vtarasiu          #+#    #+#              #
;#    Updated: 2019/07/19 16:01:16 by vtarasiu         ###   ########.fr        #
;#                                                                              #
;# **************************************************************************** #

global _ft_strcat

_ft_strcat:
	push        rbp
	mov         rbp, rsp

	mov         r11, 0 ; rdi (src) index
	mov         rcx, 0 ; rsi (dst) index

.strcat_winder:         ; wind until \0 is found
	cmp byte    [rdi + rcx], 0
	je          .strcat_catter
	inc         rcx
	jmp         .strcat_winder

.strcat_catter:
	cmp byte    [rsi + r11], 0
	je          .strcat_over
	mov         r10, [rsi + r11]
	mov         [rdi + rcx], r10
	inc         r11
	inc         rcx
	jmp         .strcat_catter

.strcat_over:
	mov         rax, rdi
	pop         rbp
	ret

