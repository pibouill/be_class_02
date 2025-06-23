; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    hello_world.s                                      :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pibouill <pibouill@student.42prague.com>   +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2025/06/23 10:39:59 by pibouill          #+#    #+#              ;
;    Updated: 2025/06/23 10:50:09 by pibouill         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section		.text

global		_start
_start:
	mov		rax, 1
	mov		rdi, 1
	mov		rsi, msg
	mov		rdx, msg_len
	syscall

	mov		rax, 60
	mov		rdi, 4242
	syscall

section		.rodata
	msg:	db "Hello World!", 10
	msg_len:	equ $ - msg
