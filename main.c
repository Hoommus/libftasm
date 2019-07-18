/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/18 22:25:27 by vtarasiu          #+#    #+#             */
/*   Updated: 2019/07/18 22:27:08 by vtarasiu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftasm.h"
#include <stdio.h>

int		main(void)
{
	printf("%c %d\n", 'c', ft_isalpha('A'));
	printf("%c %d\n", 'c', ft_isalpha('a'));
	printf("%c %d\n", 'c', ft_isalpha('z'));
	printf("%c %d\n", 'c', ft_isalpha('Z'));
	printf("%c %d\n", 'c', ft_isalpha(' '));
	printf("%c %d\n", 'c', ft_isalpha('0'));
}
