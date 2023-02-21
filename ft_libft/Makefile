# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oboucher <oboucher@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/06 12:34:33 by oboucher          #+#    #+#              #
#    Updated: 2023/02/21 14:45:27 by oboucher         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#--- LIBRARY NAME ---#
NAME = libft.a

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

#--- SOURCE ---#
SRCDIR = src

SRCS = ft_atoi.c  ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdegit.c ft_isprint.c \
	ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_split.c ft_strchr.c ft_strdup.c \
	ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c \
	ft_substr.c ft_tolower.c ft_toupper.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
	ft_putendl_fd.c ft_putnbr_fd.c ft_putnbr_fd.c ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
	ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

VPATH		=    ${SRCDIR}
#--- OBJECTS ---#
OBJDIR  =   obj

OBJS = $(addprefix ${OBJDIR}/, ${SRCS:%.c=%.o})

#--- RULES ---#

${OBJDIR}/%.o : %.c
	@${CC} ${CFLAGS} -I${INCDIR} -I. -c $< -o $@
	
all				: 		$(NAME)

$(NAME)			: 		$(OBJDIR) $(OBJS)
	@$(AR) $(NAME) $(OBJS)
	@echo "${GREEN} ${NAME} sucessefully compiled 📁.${WHITE}"

$(OBJDIR)		:
	@$(MK) $(OBJDIR)

clean			:
	@$(RM) $(OBJS)
	@$(RM)r $(OBJDIR)
	
fclean			: 		clean	
	@$(RM) $(NAME)
	@echo "${GREEN} ${NAME} object files and executable successfully removed 🗑.${WHITE}"

re				: 		fclean all

.PHONY			: 		all clean fclean re bonus