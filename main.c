/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/18 22:25:27 by vtarasiu          #+#    #+#             */
/*   Updated: 2019/07/19 20:37:32 by vtarasiu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftasm.h"
#include <stdio.h>
#include <limits.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <ctype.h>

#define BOOL(x) ((x) ? "true" : "false")

int		test_iswhat(const char *name, int (*orig)(int), int (*asm_f)(int))
{
	int		result;
	int		original;
	int		i;
	int		last_i;
	int		status;

	status = 0;
	i = 0;
	while (i < INT32_MAX)
	{
		last_i = i;
		result = asm_f(i);
		original = orig(i);
		if (result != original)
			status = dprintf(2, "%s test failed for %c (%#02x)\n", name, i, i);
		if (i != last_i)
			dprintf(2, " %s altered its argument. Expected %d, but got %d", name, last_i, i);
		if (i % 100000000 == 0 && status == 0)
			write(1, ".", 1);
		i++;
	}
	return (status);
}

int		main(void)
{
	printf("ft_isalnum() vs isalnum():\n");
	if (test_iswhat("isalnum", isalnum, ft_isalnum) == 0)
		printf(" OK\n");
	printf("ft_isalpha() vs isalpha():\n");
	if (test_iswhat("isalpha", isalpha, ft_isalpha) == 0)
		printf(" OK\n");
	printf("ft_isascii() vs isascii():\n");
	if (test_iswhat("isascii", isascii, ft_isascii) == 0)
		printf(" OK\n");
	printf("ft_isdigit() vs isdigit():\n");
	if (test_iswhat("isdigit", isdigit, ft_isdigit) == 0)
		printf(" OK\n");
	printf("ft_isprint() vs isprint():\n");
	if (test_iswhat("isprint", isprint, ft_isprint) == 0)
		printf(" OK\n");
	
	printf("ft_tolower() vs tolower():\n");
	if (test_iswhat("ft_tolower", tolower, ft_tolower) == 0)
		printf(" OK\n");
	printf("ft_toupper() vs toupper():\n");
	if (test_iswhat("ft_toupper", toupper, ft_toupper) == 0)
		printf(" OK\n");

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
