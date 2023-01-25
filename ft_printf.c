/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/23 14:51:40 by oboucher          #+#    #+#             */
/*   Updated: 2023/01/25 14:51:02 by oboucher         ###   ########.fr       */
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
        return(ft_putstr_fd(va_arg(arg, char *), 1));
    }
    else if (c == 'p')
    {
        return(ft_putnbr_base(va_arg(arg, int), c));
    }
    else if (c == 'd' || c == 'i')
    {
        return(ft_putnbr_fd(va_arg(arg, int), 1));
    }
    else if (c == 'x' || c == 'X')
    {
        return(ft_putnbr_base(va_arg(arg, int), c));
    }
    else if (c == '%')
    {
        return(ft_putchar_fd('%', 1));
    }
    return (0);
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
            len += check(arg, str[i+1]);
            i += 2;
        }
        else 
            len += ft_putchar_fd(str[i++], 1);
    }
    
    va_end(arg);
    
    return (len);
}