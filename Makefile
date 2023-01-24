# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/06 12:34:33 by oboucher          #+#    #+#              #
#    Updated: 2023/01/23 13:53:39 by oboucher         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
LIBFT = libft.a
LPATH = libft/
SRC = $(wildcard *.c)

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