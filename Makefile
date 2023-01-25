# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/06 12:34:33 by oboucher          #+#    #+#              #
#    Updated: 2023/01/25 12:41:59 by oboucher         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
LIBFT = libft.a
LPATH = libft/
SRC = 	ft_printf.c \
	ft_hex_len.c \
	ft_putnbr_base.c \
	ft_putnbr_unsigned.c

OBJS = $(SRC:%.c=%.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(LPATH)$(LIBFT) $(NAME)

$(NAME): $(OBJS)
	cp $(LPATH)$(LIBFT) $(NAME)
	ar -rcs $(NAME) $(OBJS)

$(LPATH)$(LIBFT):
	$(MAKE) -C $(LPATH)

clean:
	rm -f *.o
	rm -f $(LPATH)*.o
fclean: clean	
	rm -f $(NAME)
	rm -f $(LPATH)$(LIBFT)

re: fclean all

.PHONY: all clean fclean re 