# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: guilmira <guilmira@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/17 12:59:05 by guilmira          #+#    #+#              #
#    Updated: 2021/09/23 08:02:59 by guilmira         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

OBJS	= ${SRCS:.c=.o}

CC		= gcc
CFLAGS	= -Wall -Werror -Wextra

INCLUDES = -I ./0includes

#--------------------------------------------------------------------------------------------------------------SOURCES
SRCS	=		$(1BOOLEANS) $(2STRINGS) $(3STRINGS_MID) $(4STRINGS_ADV) $(5NUMBERS) \
				 $(6FDS) $(7TOOLS) $(8LINKED_LISTS) $(9MEMORY) $(10ARRAYS)

1BOOLEANS =		./1booleans/ft_isalnum.c ./1booleans/ft_isalpha.c ./1booleans/ft_isascii.c \
				./1booleans/ft_isdigit.c ./1booleans/ft_isprint.c ./1booleans/ft_isspaces.c

2STRINGS =		./2strings/ft_strchr_plus.c ./2strings/ft_strchr.c ./2strings/ft_strcmp.c \
				./2strings/ft_strlen.c


3STRINGS_MID =	./3strings_mid/ft_strlcat.c ./3strings_mid/ft_strlcpy.c ./3strings_mid/ft_strmapi.c \
				./3strings_mid/ft_strncmp.c ./3strings_mid/ft_strnstr.c ./3strings_mid/ft_strrchr.c

4STRINGS_ADV =	./4strings_adv/ft_free_split.c ./4strings_adv/ft_split.c ./4strings_adv/ft_strdup.c \
				./4strings_adv/ft_strjoin.c ./4strings_adv/ft_strtrim.c ./4strings_adv/ft_substr.c

5NUMBERS =		./5numbers/ft_atoi_plus.c ./5numbers/ft_atoi.c ./5numbers/ft_itoa.c

6FDS =			./6fds/ft_pointer_fd.c ./6fds/ft_putchar_fd.c ./6fds/ft_putendl_fd.c \
				./6fds/ft_putnbr_fd.c ./6fds/ft_putstr_fd.c

7TOOLS =		./7tools/ft_count_digits.c ./7tools/ft_tolower.c ./7tools/ft_toupper.c

8LINKED_LISTS = ./8linked_lists/ft_fullclear.c ./8linked_lists/ft_lstadd_back.c ./8linked_lists/ft_lstadd_front.c ./8linked_lists/ft_lstclear.c \
				./8linked_lists/ft_lstdelone.c ./8linked_lists/ft_lstiter.c ./8linked_lists/ft_lstlast.c \
				./8linked_lists/ft_lstmap.c ./8linked_lists/ft_lstnew.c ./8linked_lists/ft_lstsize.c

9MEMORY =		./9memory/ft_bzero.c ./9memory/ft_calloc.c ./9memory/ft_memccpy.c \
				./9memory/ft_memchr.c ./9memory/ft_memcmp.c ./9memory/ft_memcpy.c \
				./9memory/ft_memmove.c ./9memory/ft_memset.c

10ARRAYS =		./10arrays/ft_array_print.c ./10arrays/ft_bubble_sort.c ./10arrays/ft_lstto_array.c \
				./10arrays/ft_swap.c

#--------------------------------------------------------------------------------------------------------------RULES
all: ${NAME}

%.o: %.c
	-@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

${NAME}: ${OBJS}
	ar rcs ${NAME} ${OBJS}

clean:
	rm -rf ${OBJS}

fclean: clean
	rm -rf $(NAME)

re: fclean all bonus

.PHONY: all bonus clean fclean re
