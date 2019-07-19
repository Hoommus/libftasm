# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/18 21:50:14 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/19 18:37:40 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

CC = clang
ASM = nasm

INCLUDE = libfts.h

FLAGS = -Wall  \
        -Wextra \
        -Werror

ASM_DIR = ./
ASM_SRC = ft_puts.s \
          ft_bzero.s \
          ft_strlen.s \
          ft_strcat.s  \
          ft_isalpha.s \
          ft_isascii.s \
          ft_isdigit.s \
          ft_isprint.s \
          ft_toupper.s \
          ft_isalnum.s \
          ft_toupper.s \
          ft_tolower.s

OBJ_DIR = obj/

OBJ = $(addprefix $(OBJ_DIR), $(ASM_SRC:.s=.o))

all: $(NAME)

prepare:
	mkdir -p $(OBJ_DIR)

$(NAME): prepare | $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ_DIR)%.o: %.s
	$(ASM) -f macho64 -o $@ $<

test: all
	$(CC) $(FLAGS) $(NAME) main.c -o test

clean:
	/bin/rm -f $(OBJ)
	/bin/rm -rf $(OBJ_DIR)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
