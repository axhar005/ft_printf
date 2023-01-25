/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_unsigned.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/25 12:32:21 by oboucher          #+#    #+#             */
/*   Updated: 2023/01/25 14:51:09 by oboucher         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

static int ft_numlen(unsigned int n)
{
	int i;

	i = 1;
	while (n > 9)
	{
		n /= 10;
		i++;
	}
	return (i);
}

int ft_putnbr_unsigned(unsigned int n)
{
    int numlen;
     
    numlen = ft_numlen(n);
    if (n > 9)
    {
        ft_putnbr_fd(n / 10, 1);
        n = n % 10;
    }
    ft_putchar_fd(n + '0', 1);
    return (numlen);
}