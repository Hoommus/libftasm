# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtarasiu <vtarasiu@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/18 21:50:14 by vtarasiu          #+#    #+#              #
#    Updated: 2019/07/20 19:18:20 by vtarasiu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

CC = clang
ASM = nasm

UNAME_S = $(shell uname -s)

ARCH = 

ifeq ($(UNAME_S), Linux)
	ARCH += elf64
endif
ifeq ($(UNAME_S), Darwin)
	ARCH += macho64
endif

INCLUDE = libfts.h

FLAGS = -Wall  \
        -Wextra \
        -Werror  \
        -g \
       #-fsanitize=address

ASM_DIR = ./
ASM_SRC = ft_puts.s \
          ft_bzero.s \
          ft_strlen.s \
          ft_strcat.s  \
          ft_strdup.s  \
          ft_isalpha.s \
          ft_isascii.s \
          ft_isdigit.s \
          ft_isprint.s \
          ft_toupper.s \
          ft_isalnum.s \
          ft_toupper.s \
          ft_tolower.s \
          ft_memcpy.s

OBJ_DIR = obj/

OBJ = $(addprefix $(OBJ_DIR), $(ASM_SRC:.s=.o))

all: $(NAME)

prepare:
	mkdir -p $(OBJ_DIR)

$(NAME): prepare | $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ_DIR)%.o: %.s
	$(ASM) -f $(ARCH) -o $@ $<

test: all
	$(CC) $(FLAGS) -o test main.c $(NAME) -I.

clean:
	/bin/rm -f $(OBJ)
	/bin/rm -rf $(OBJ_DIR)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
