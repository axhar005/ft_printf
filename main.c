/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/25 13:07:19 by oboucher          #+#    #+#             */
/*   Updated: 2023/02/09 23:31:09 by oboucher         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stdio.h>

int	main(void)
{
	int	a;

	ft_printf("%c", 'c');
	ft_printf("%s", "abc");
	ft_printf("%p", &a);
	ft_printf("%d", 10);
	ft_printf("%i", 10);
	ft_printf("%u", 10);
	ft_printf("%x", 10);
	ft_printf("%X", 10);
	ft_printf("%%");
	return (0);
}
