; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/21 16:56:18 by vtarasiu          #+#    #+#              ;
;    Updated: 2019/07/21 16:56:18 by vtarasiu         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strlen

ft_strlen:
_ft_strlen:
	push      rbp
	mov       rbp, rsp

	push      rdi
	mov       rax, 0
	mov       rcx, 0
	not       rcx

	repne     scasb

	not       rcx
	dec       rcx
	mov       rax, rcx

    pop       rdi
    pop       rbp
    ret