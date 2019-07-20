; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strcat.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2019/07/19 14:23:52 by vtarasiu          #+#    #+#              #
;    Updated: 2019/07/19 16:01:16 by vtarasiu         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

global _ft_strcat

_ft_strcat:
	push        rbp
	mov         rbp, rsp

	push        rdi
	push        rsi

	mov         r10, 0 ; rdi (dst) index
	mov         r11, 0 ; rsi (src) index
	mov         r9, 0  ; temporary register

.strcat_winder:         ; wind dst until \0 is found
	cmp byte    [rdi + r10], 0
	je          .strcat_catter
	inc         r10
	jmp         .strcat_winder

.strcat_catter:
	cmp byte    [rsi + r11], 0
	je          .strcat_over
	mov byte    r9, [rsi + r11]
	mov byte    [rdi + r10], r9b
	inc         r11
	inc         r10
	jmp         .strcat_catter

.strcat_over:
	mov byte    [rdi + r10], 0
	mov         rax, rdi
	pop         rbp
	pop         rdi
	pop         rsi
	ret

