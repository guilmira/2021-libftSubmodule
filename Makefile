# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: guilmira <guilmira@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/17 12:59:05 by guilmira          #+#    #+#              #
#    Updated: 2021/07/17 18:13:07 by guilmira         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

OBJS	= ${SRCS:.c=.o}

CC		= gcc
CFLAGS	= -Wall -Werror -Wextra

INCLUDES = -I ./0includes

#--------------------------------------------------------------------------------------------------------------SOURCES
SRCS	=		$(1BOOLEANS) $(2STRINGS) $(3STRINGS_ADV) $(4NUMBERS) \
				$(5MEMORY) $(6FDS) $(7TOOLS) $(8LINKED_LISTS)

1BOOLEANS =		./1booleans/ft_isalnum.c ./1booleans/ft_isalpha.c ./1booleans/ft_isascii.c \
				./1booleans/ft_isdigit.c ./1booleans/ft_isprint.c

2STRINGS =		./2strings/ft_strchr_plus.c ./2strings/ft_strchr.c ./2strings/ft_strlcat.c \
				./2strings/ft_strlcpy.c ./2strings/ft_strlen.c ./2strings/ft_strmapi.c \
				./2strings/ft_strncmp.c ./2strings/ft_strnstr.c ./2strings/ft_strrchr.c

3STRINGS_ADV =	./3strings_adv/ft_split.c ./3strings_adv/ft_strdup.c ./3strings_adv/ft_strjoin.c \
				./3strings_adv/ft_strtrim.c ./3strings_adv/ft_substr.c

4NUMBERS =		./4numbers/ft_atoi_plus.c ./4numbers/ft_atoi.c ./4numbers/ft_itoa.c

5MEMORY	=		./5memory/ft_bzero.c ./5memory/ft_calloc.c ./5memory/ft_memccpy.c \
				./5memory/ft_memchr.c ./5memory/ft_memcmp.c ./5memory/ft_memcpy.c \
				./5memory/ft_memmove.c ./5memory/ft_memset.c

6FDS =			./6fds/ft_pointer_fd.c ./6fds/ft_putchar_fd.c ./6fds/ft_putendl_fd.c \
				./6fds/ft_putnbr_fd.c ./6fds/ft_putstr_fd.c

7TOOLS =		./7tools/ft_count_digits.c ./7tools/ft_tolower.c ./7tools/ft_toupper.c

8LINKED_LISTS = ./8linked_lists/ft_lstadd_back.c ./8linked_lists/ft_lstadd_front.c ./8linked_lists/ft_lstclear.c \
				./8linked_lists/ft_lstdelone.c ./8linked_lists/ft_lstiter.c ./8linked_lists/ft_lstlast.c \
				./8linked_lists/ft_lstmap.c ./8linked_lists/ft_lstnew.c ./8linked_lists/ft_lstsize.c

#--------------------------------------------------------------------------------------------------------------RULES
all: ${NAME}

%.o: %.c
	-@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

${NAME}: ${OBJS}
	ar rcs ${NAME} ${OBJS}

m:
	gcc main.c $(OBJS) $(INCLUDES) && ./a.out

clean:
	rm -rf ${OBJS}

fclean: clean
	rm -rf $(NAME)

re: fclean all bonus

.PHONY: all bonus clean fclean re
