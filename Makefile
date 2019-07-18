# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/18 21:50:14 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/18 22:24:31 by vtarasiu         ###   ########.fr        #
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
ASM_SRC = ft_bzero.s ft_isalpha.s

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

test:
	$(CC) $(FLAGS) $(NAME) main.c -o test
