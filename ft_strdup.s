; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/19 20:45:27 by vtarasiu          #+#    #+#              ;
;    Updated: 2019/07/20 17:17:09 by vtarasiu         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_strdup
global _ft_strdup
extern _ft_strlen
extern _malloc
extern malloc

ft_strdup:
_ft_strdup:
    push        rbx
	push        rbp
	mov         rbp, rsp

	push        rdi
	push        rdi

	call        _ft_strlen  ; count size
	push        rax

	mov         rdi, rax    ; move desired size for malloc to its first register
	add         rdi, 1      ; add space for \0 at the end

	call        malloc     ; get new pointer
	cmp         rax, 0
	pop         rcx
	pop         rsi
	push        rax
	je          .strdup_fail
	mov         rdi, rax
	rep movsb
	mov byte    [rdi + 0], 0

.strdup_fail:
    pop         rax
	pop         rdi
	pop         rbp
	pop         rbx
	ret
