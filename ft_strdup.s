; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strdup.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2019/07/19 20:45:27 by vtarasiu          #+#    #+#              #
;    Updated: 2019/07/20 17:17:09 by vtarasiu         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

global _ft_strdup
extern _ft_strlen
extern _malloc
extern _ft_strcat

_ft_strdup:
	push        rbp
	mov         rbp, rsp

	push        rdi
	push        rdi

	call        _ft_strlen  ; count size
	mov         rdi, rax    ; move desired size for malloc to its first register
	add         rdi, 1      ; add space for \0 at the end
	call        _malloc     ; get new pointer

	cmp         rax, 0
	je          .strdup_fail

	mov byte    [rax], 0 ; make first byte zero

	mov         rdi, rax     ; move new pointer to dst register
	pop         rsi          ; set src register to that strdup argument
	call        _ft_strcat

.strdup_fail:
	pop         rdi
	pop         rbp
	ret
