; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/19 14:23:52 by vtarasiu          #+#    #+#              ;
;    Updated: 2019/07/19 16:01:16 by vtarasiu         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strcat
extern _ft_strlen

_ft_strcat:
	push        rbp
	mov         rbp, rsp

	push        rdi
	push        rsi

	call        _ft_strlen
	mov         rcx, rax
	inc         rcx

	repe scasb
	rep  movsb

	pop         rsi
	pop         rdi
	mov         rax, rdi
	pop         rbp
	ret

