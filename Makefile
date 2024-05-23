# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fgori <fgori@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/07 12:20:04 by fgori             #+#    #+#              #
#    Updated: 2024/05/23 10:26:07 by fgori            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

file = src/ft_printf.c\
	src/ft_putvod.c\
	src/ft_putchr.c

cc = cc

flag = -Wall -Werror -Wextra -c -I./lib

NAME = libftprintf.a

object = $(file:.c=.o)

all: $(NAME)

$(NAME): $(object)
	ar -rc $(NAME) $(object)
%.o: %.c
	$(cc) $(flag) -c $< -o $@
clean:
	rm -f $(object)
fclean: clean
	rm -f $(NAME)
re: fclean all

.PHONY: all clean fclean re bonus