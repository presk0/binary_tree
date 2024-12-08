NAME := btree.a

CC := cc
CFLAGS := -Wextra -Wall -Werror -Wunreachable-code -Ofast

SRCS := ft_btree.c
OBJS := $(SRCS:.c=.o)

all: $(NAME)

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS)
	@$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

debug: $(OBJS)
	@$(CC) -g src/*.c -o pouet
	lldb pouet
	rm pouet

clean:
	@rm -rf $(OBJS)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
