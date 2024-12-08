# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nidionis <nidionis@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/02 15:16:38 by supersko          #+#    #+#              #
#    Updated: 2024/12/08 19:29:47 by nidionis         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_DIR = src
FILES = ft_btree.c
SRCS = $(addprefix $(SRC_DIR)/, $(FILES))

OBJS = ${SRCS:.c=.o}

OBJ_FILES = $(SRCS:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

NAME = btree.a

CFLAGS = -Wall -Wextra -Werror

CC = cc

all: ${NAME}

${NAME}: ${OBJS}
	@ar rcs $@ $?

%.o: %.c
	${CC} ${CFLAGS} -c $< -o $@

test:
	gcc *.c 

clean:
	rm -rf ${OBJS} ${OBJS_BONUS}

fclean: clean
	rm -rf ${NAME}

re: fclean all
