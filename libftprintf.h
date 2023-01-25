#ifndef LIBFTPRINTF_h
# define LIBFTPRINTF_h

# include "libft/libft.h"
# include <stdarg.h>

int ft_putnbr_base(unsigned int nbr, char c);
int	ft_hex_len(unsigned int nbr);
int	ft_printf(const char *str, ...);
int ft_putnbr_unsigned(unsigned int n);

#endif