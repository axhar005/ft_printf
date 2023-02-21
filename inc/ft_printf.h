/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/27 15:06:03 by oboucher          #+#    #+#             */
/*   Updated: 2023/02/21 14:07:14 by oboucher         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "../ft_libft/inc/libft.h"
# include <stdarg.h>

int	ft_putnbr_base(unsigned int nbr, char c);
int	ft_hex_len(unsigned int nbr);
int	ft_printf(const char *str, ...);
int	ft_putnbr_unsigned(unsigned int n);
int	ft_putpointer(unsigned long long n);

#endif