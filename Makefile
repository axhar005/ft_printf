# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/06 12:34:33 by oboucher          #+#    #+#              #
#    Updated: 2023/02/21 15:15:36 by oboucher         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
LIBFT = libft.a
LPATH = ft_libft/
SRC = 	ft_printf.c \
	ft_hex_len.c \
	ft_putnbr_base.c \
	ft_putnbr_unsigned.c \
	ft_putpointer.c

OBJS = $(SRC:%.c=%.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: libft $(NAME)

$(NAME): $(OBJS)
	cp $(LPATH)$(LIBFT) $(NAME)
	ar -rcs $(NAME) $(OBJS)

libft:
	$(MAKE) -C $(LPATH)

clean:
	rm -f *.o
	rm -f $(LPATH)*.o
fclean: clean	
	rm -f $(NAME)
	rm -f $(LPATH)$(LIBFT)

re: fclean all

.PHONY: all clean fclean re 
