/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_hex_len.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/23 17:53:17 by oboucher          #+#    #+#             */
/*   Updated: 2023/01/23 18:33:38 by oboucher         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

int ft_hex_len(size_t nbr)
{
    size_t i;
    size_t nb;

    i = 0;
    if (nbr == 0)
        return (1);
    else
        nb = nbr;
    while (nb != 0)
    {
        nb /= 16;
        i++;
    }
    return (i);
}