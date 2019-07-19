/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/18 22:25:27 by vtarasiu          #+#    #+#             */
/*   Updated: 2019/07/19 18:45:13 by vtarasiu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftasm.h"
#include <stdio.h>

#define BOOL(x) ((x) ? "true" : "false")

int		main(void)
{
	printf("isalpha tests\n");
	printf("isalpha(%c) %s\n", 'c', BOOL(ft_isalpha('A')));
	printf("isalpha(%c) %s\n", 'a', BOOL(ft_isalpha('a')));
	printf("isalpha(%c) %s\n", 'z', BOOL(ft_isalpha('z')));
	printf("isalpha(%c) %s\n", 'Z', BOOL(ft_isalpha('Z')));
	printf("isalpha(%c) %s\n", ' ', BOOL(ft_isalpha(' ')));
	printf("isalpha(%c) %s\n", '0', BOOL(ft_isalpha('0')));


	printf("\nisprint tests\n");
	printf("isprint(%c) %s\n", 'c', BOOL(ft_isprint('A')));
	printf("isprint(%c) %s\n", 'a', BOOL(ft_isprint('a')));
	printf("isprint(%c) %s\n", 'z', BOOL(ft_isprint('z')));
	printf("isprint(%c) %s\n", 'Z', BOOL(ft_isprint('Z')));
	printf("isprint(%c) %s\n", ' ', BOOL(ft_isprint(' ')));
	printf("isprint(%c) %s\n", '0', BOOL(ft_isprint('0')));
	printf("isprint(%c) %s\n", ' ', BOOL(ft_isprint(32)));
	printf("isprint(%d) %s\n", 127, BOOL(ft_isprint(127)));
	printf("isprint(%d) %s\n", 4,   BOOL(ft_isprint(4)));
	printf("isprint(%d) %s\n", 10,  BOOL(ft_isprint(10)));


	printf("\nisascii tests\n");
	printf("isacii(%c) %s\n", 'c', BOOL(ft_isascii('A')));
	printf("isacii(%c) %s\n", 'a', BOOL(ft_isascii('a')));
	printf("isacii(%c) %s\n", 'z', BOOL(ft_isascii('z')));
	printf("isacii(%c) %s\n", 'Z', BOOL(ft_isascii('Z')));
	printf("isacii(%c) %s\n", ' ', BOOL(ft_isascii(' ')));
	printf("isacii(%c) %s\n", '0', BOOL(ft_isascii('0')));
	printf("isacii(%d) %s\n", 0,   BOOL(ft_isascii(0)));
	printf("isacii(%d) %s\n", 127, BOOL(ft_isascii(127)));
	printf("isacii(%d) %s\n", 255, BOOL(ft_isascii(255)));
	printf("isacii(%d) %s\n", 256, BOOL(ft_isascii(256)));
	printf("isacii(%d) %s\n", 257, BOOL(ft_isascii(257)));
	printf("isacii(%d) %s\n", 2147483647, BOOL(ft_isascii(2147483647)));

	printf("\nputs tests\n");
	ft_puts("hello");
	ft_puts("hello_world");
	ft_puts("");
	ft_puts("ls -l");
	ft_puts("ls -l\n\n");
//
//	printf("{%c} %d\n", '1', ft_isdigit('1'));
//	printf("{%c} %d\n", '2', ft_isdigit('2'));
//	printf("{%c} %d\n", '3', ft_isdigit('3'));
//	printf("{%c} %d\n", '4', ft_isdigit('4'));
//	printf("{%c} %d\n", '5', ft_isdigit('5'));
//	printf("{%c} %d\n", '6', ft_isdigit('6'));
//	printf("{%c} %d\n", '7', ft_isdigit('7'));
//	printf("{%c} %d\n", '8', ft_isdigit('8'));
//	printf("{%c} %d\n", '9', ft_isdigit('9'));
//	printf("{%c} %d\n", '0', ft_isdigit('0'));
//	printf("{%c} %d\n", 'a', ft_isdigit('a'));
//
//
//	printf("{%c} %d\n", 'c', ft_isalpha('A'));
//	printf("{%c} %d\n", 'a', ft_isalpha('a'));
//	printf("{%c} %d\n", 'z', ft_isalpha('z'));
//	printf("{%c} %d\n", 'Z', ft_isalpha('Z'));
//	printf("{%c} %d\n", ' ', ft_isalpha(' '));
//	printf("{%c} %d\n", '0', ft_isalpha('0'));
//
//
//	printf("{%c} %d\n", 'c', ft_isalpha('A'));
//	printf("{%c} %d\n", 'a', ft_isalpha('a'));
//	printf("{%c} %d\n", 'z', ft_isalpha('z'));
//	printf("{%c} %d\n", 'Z', ft_isalpha('Z'));
//	printf("{%c} %d\n", ' ', ft_isalpha(' '));
//	printf("{%c} %d\n", '0', ft_isalpha('0'));
//
//
//	printf("{%c} %d\n", 'c', ft_isalpha('A'));
//	printf("{%c} %d\n", 'a', ft_isalpha('a'));
//	printf("{%c} %d\n", 'z', ft_isalpha('z'));
//	printf("{%c} %d\n", 'Z', ft_isalpha('Z'));
//	printf("{%c} %d\n", ' ', ft_isalpha(' '));
//	printf("{%c} %d\n", '0', ft_isalpha('0'));
//

}
