/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_base.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/23 17:46:02 by oboucher          #+#    #+#             */
/*   Updated: 2023/01/23 18:34:54 by oboucher         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

int ft_putnbr_base(size_t nbr)
{
    char *hex;
    int i;

    hex = "0123456789abcdef";
    i = 0;

    if (nbr / ft_strlen(hex) != 0)
        ft_putnbr_base(nbr / ft_strlen(hex));
    ft_putchar_fd(nbr / ft_strlen(hex), 1);
    return (ft_hex_len(nbr)); 
}