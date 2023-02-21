# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/06 12:34:33 by oboucher          #+#    #+#              #
#    Updated: 2023/02/21 14:45:12 by oboucher         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#--- LIBRARY NAME ---#
NAME = libftprintf.a

#--- COMMAND VARIABLES ---#
CC = gcc

CFLAGS = -Wall -Wextra -Werror

RM = rm -f

AR = ar rcs

MK = mkdir -p

#--- COLORS ---#
GREEN	=	\033[0;32m

RED		=	\033[0;31m

WHITE	=	\033[0m

#--- INCLUDE ---#
INCDIR = inc

#--- SOURCE, PATH ---#
LIBFT = libft.a

LDIR = ft_libft/

SRCDIR = src

SRCS = 	ft_printf.c \
	ft_hex_len.c \
	ft_putnbr_base.c \
	ft_putnbr_unsigned.c \
	ft_putpointer.c

VPATH	=	${SRCDIR}

#--- OBJECT, PATH ---#
OBJDIR  =   obj

OBJS = $(addprefix ${OBJDIR}/, ${SRCS:.c=.o})

#--- RULES ---#
${OBJDIR}/%.o : %.c
	@${CC} ${CFLAGS} -I${INCDIR} -I. -c $< -o $@
	
all				: 		libft $(NAME)
	
$(NAME)			: 		$(OBJDIR) $(OBJS)
	@$(AR) $(NAME) $(OBJS)
	@echo "${GREEN} ${NAME} sucessefully compiled 📁.${WHITE}"

$(OBJDIR)		:
	@$(MK) ${OBJDIR}

libft:
	@$(MAKE) -C $(LDIR)

clean			:
	@$(RM) $(OBJS)
	@$(RM)r $(OBJDIR)
	@$(MAKE) -C $(LDIR) clean
	
fclean			: 		clean	
	@$(RM) $(NAME)
	@$(MAKE) -C $(LDIR) fclean
	@echo "${GREEN} ${NAME} object files and executable successfully removed 🗑.${WHITE}"

re				: 		fclean all

.PHONY			: 		all clean fclean re 