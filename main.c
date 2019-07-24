/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/18 22:25:27 by vtarasiu          #+#    #+#             */
/*   Updated: 2019/07/20 19:19:39 by vtarasiu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftasm.h"
#include <stdio.h>
#include <limits.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>

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
	while (i < 256)
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

#define ZEROES "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
#define ZEROES2 ZEROES ZEROES ZEROES ZEROES ZEROES ZEROES ZEROES ZEROES ZEROES

static char			g_dsts[][1024] =
{
	"hello" ZEROES2,
	"world" ZEROES2,
	"" ZEROES2,
	"\0" ZEROES2,
	"NirJmaKUgaYttgXPugxfryCDyoFfFgKqEbNhUxCY" ZEROES2,
	"lXBXGSZrbtFTnqcotTZS" ZEROES2,
	"WruUrhtObnnHjkpKxbSYLpSpjwiOBNfIrtdEBGAN" ZEROES2,
	"xEMMtJNTCcdNsdjCAYAaqXHZupdTWnIZACHUVOzeqXHZupdTWnIZACHUVOzeqXHZupdTWnIZAC"
	"HUVOzeqXHZupdTWnIZACHUVOzeqXHZupdTWnIZACHUVOze" ZEROES2,
	"qXHZupdTWnIZACHUVOze" ZEROES2,
	"qkygGbeIawZMEPNasVYl" ZEROES2,
	"HcTAsloEImmmWPDQEZPB" ZEROES2,
	"yIcWvpujrllUvrrtspsC" ZEROES2,
	"vjvkgKzOzVFEBDJlJAHeZkDHqeUcSVeshmNfRIHfvofhbymzljvKrrLpumPzJWgNpzIAASmvVc"
	"AtrxHybiPNZIVXjjncZSFNswHSlktFfayGPNxijjwPupbFPbqYlsmpiJrmwHSNrOIAufgSyqpM"
	"YNZyulNEovRuJdmvNeuafuPHzsjAcHKzNHZJGFVEcHLPlwQBkGmoYtoyODFMVMsOAUuhydXiPK"
	"sRLJqRRvVisjSqLxdHvKwZZMoUGzkGjAiauesMrXHrDuOZVcFFFtEPKXEjuMQLdMHkPvdrwdbS"
	"vvHZSLufAubUQtjVgMAVUlCOWQkTxwxurphdldBhPKvXmpbsVrcisCHYqxGuWoUXdSLyVQTqTh"
	"VigvJlOgCruvmqWkslmaIczwLkmjxp" ZEROES2,
	{0},
	{0}
};

const char		*g_srcs[] =
{
	"" ZEROES2,
	"vXVlOgkFshKmuuWvzHgh" ZEROES2,
	"ZZxlhPEchyBGCYtOQIJv" ZEROES2,
	"BSjYBygwrcWHrfkXAhre" ZEROES2,
	"AnkQtobwcitdCUGJEpxt" ZEROES2,
	"mgJhvVsalXrvmvzqpsVJ" ZEROES2,
	"iJbzYfFwhIyGwrCsCQMm" ZEROES2,
	"wpofbUadbwNNWNiwnhcn" ZEROES2,
	"NrZerqfmtpIknJzSGzth" ZEROES2,
	"AcqahVhiDJuaoCvgelLRBzuGhYkNoeNvuvtnnAPm" ZEROES2,
	"AaAaAaAaAaAaAaAaAaAaA" ZEROES2,
	"prUuGKULiXrpvvxSLAhA" ZEROES2,
	"wsWfqiiKSCCmPLbytGGC" ZEROES2,
	"oPyewHDoQixdrHteBNtYeKJMKDSLolbvJjOqSyLh" ZEROES2,
	"spWYciyPBTUllIkqnhbH" ZEROES2,
	"jiysNsTQDQJyUcBwFfER" ZEROES2,
	"DPzunLDTJuIOnDseDNMB" ZEROES2,
	"\0\0\0" ZEROES2,
	"vvrOpWcGELOhwOTAqyFj" ZEROES2,
	"hRqJFcyynensbqBAotwBZyUAxukJWmIIWbVQnCbx" ZEROES2,
	"seHJDMCVBqrUZJJAPaDgcDrWlYVeUpUMEHRkpsehiuhmEQCQfahTACNfbnJfSjxgFBmAIaJUxa"
	"RmrmDwZbgphhKgNcaqvKaSRajEbMxtlUhWzNDTJcGeRetD"
};

int		test_strdup(void)
{
	char	*dupped;
	char	*odupped;
	int		i;
	int		status;

	status = 0;
	i = 0;
	while (i < 13)
	{
		dupped = ft_strdup(g_dsts[i]);
		odupped = strdup(g_dsts[i]);
		if (!dupped || strcmp(dupped, odupped) != 0)
			status = printf("strdup failed for %s:%s\n", g_dsts[i], dupped);
		free(dupped);
		free(odupped);
		i++;
	}
	return (status);
}

int		test_strlen(void)
{
	size_t		len;
	size_t		olen;
	int			i;
	int			status;

	status = 0;
	i = 0;
	while (g_dsts[i])
	{
		len = ft_strlen(g_dsts[i]);
		olen = strlen(g_dsts[i]);
		if (len != olen)
			status = printf("strlen fail. Expected %zu, got %zu\n", olen, len);
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

	printf("ft_strdup() (with strcat and strlen) vs strdup():\n");
	if (test_strdup() == 0)
		printf(" OK\n");

	printf("ft_strlen() vs strlen():\n");
	if (test_strdup() == 0)
		printf(" OK\n");

	printf("\nputs tests\n");
	ft_puts("hello");
	ft_puts("hello_world");
	ft_puts("");
	ft_puts("ls -l");
	ft_puts("ls -l\n\n");
}
