# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/06 12:34:33 by oboucher          #+#    #+#              #
#    Updated: 2023/02/21 23:45:41 by oboucher         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#--- LIBRARY NAME ---#
NAME = libftprintf.a

CNAME = $(YELLOW)~ PRINTF ${GREEN}

#--- COMMAND VARIABLES ---#
CC = gcc

CFLAGS = -Wall -Wextra -Werror

RM = rm -f

AR = ar rcs

MK = mkdir -p

#--- COLORS ---#
GREEN	=	\033[1;32m

RED		=	\033[1;31m

BLUE	=	\033[1;34m

YELLOW	=	\033[1;93m

WHITE	=	\033[0m

RECHO = @echo "$(RED)"

WECHO = @echo "$(WHITE)"

#--- BACKGROUD ---#
BGREEN	=	\033[0;42m

BRED 	=  	\033[0;101m

BYELLOW =	\033[0;103m

BBLUE =	\033[0;94m

#--- INCLUDE ---#
INCDIR = inc

#--- SOURCE ---#
LIBFT = libft.a

LDIR = ft_libft/

SRCDIR = src

SRCS = 	ft_printf.c \
	ft_hex_len.c \
	ft_putnbr_base.c \
	ft_putnbr_unsigned.c \
	ft_putpointer.c

VPATH	=	${SRCDIR}

#--- OBJECT ---#
OBJDIR  =   obj

OBJS = $(addprefix ${OBJDIR}/, ${SRCS:.c=.o})

#--- RULES ---#
${OBJDIR}/%.o : %.c
	@${CC} ${CFLAGS} -I${INCDIR} -I. -c $< -o $@
	
all				: 	 	art libft $(NAME)
	
$(NAME)			: 		$(OBJDIR) $(OBJS)
	@$(AR) $(NAME) $(OBJS)
	@echo "$(CNAME) sucessefully compiled 📁.${WHITE}"

$(OBJDIR)		:
	@$(MK) ${OBJDIR}

libft			:
	@$(MAKE) -C $(LDIR)

art 			:
	clear
	$(RECHO)"              ######      "
	@echo	"           ############   "
	@echo	"          ##############  "
	@echo	"         #######  ####### "
	$(WECHO)"         #######  ####### "
	@echo	"          ##############  "
	@echo	"           ############   "
	@echo	"              ######      \n"

clean			:
	@$(RM) $(OBJS)
	@$(RM)r $(OBJDIR)
	@$(MAKE) -C $(LDIR) clean
	
fclean			: 		clean	
	@$(RM) $(NAME)
	@$(MAKE) -C $(LDIR) fclean
	@echo "$(CNAME) object files and executable successfully removed 🗑.${WHITE}"

re				: 		fclean all

.PHONY			: 		all clean fclean re 