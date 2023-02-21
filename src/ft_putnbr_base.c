/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_base.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/23 17:46:02 by oboucher          #+#    #+#             */
/*   Updated: 2023/01/27 16:15:16 by oboucher         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putnbr_base(unsigned int nbr, char c)
{
	char			*hex;
	unsigned int	nb;

	nb = nbr;
	if (c == 'X')
		hex = "0123456789ABCDEF";
	else
		hex = "0123456789abcdef";
	if (nb >= 16)
		ft_putnbr_base(nb / 16, c);
	ft_putchar_fd(hex[nb % 16], 1);
	return (ft_hex_len(nbr));
}
