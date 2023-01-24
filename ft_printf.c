/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/23 14:51:40 by oboucher          #+#    #+#             */
/*   Updated: 2023/01/23 19:06:55 by oboucher         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

int check(va_list arg, char c)
{
    if (c == 'c')
    {
        return(ft_putchar_fd(va_arg(arg, int), 1));
    }
    else if (c == 's')
    {
        return(ft_putstr_fd(va_arg(arg, int), 1));
    }
    else if (c == 'p')
    {
        return(ft_putnbr_base(va_arg(arg, int), 1));
    }
}

int ft_printf(const char *str, ...)
{
    int i;
    size_t len;
    va_list arg;

    i = 0;
    len = 0;
    va_start(arg, str);
    
    while (str[i])
    {
        if (str[i] == '%')
        {
            check(arg, str[i+1]);
        }
        i++;
    }
    
    va_end(arg);
    
    return (0);
}