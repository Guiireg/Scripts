##
## EPITECH PROJECT, 2024
## makefile
## File description:
## Makefile
##

.PHONY: all clean fclean re

SRC	=	lib/my_putchar.c	\
		lib/my_putstr.c	\
		lib/my_put_nbr.c	\

LIB_NAME	=	obj/libmy.a
NAME	=	my_program

OBJ	=	\$(SRC:.c=.o)

all:	\$(NAME) \$(LIB_NAME)

\$(LIB_NAME): \$(OBJ)
	ar rc \$(LIB_NAME) \$(OBJ)

\$(NAME):	\$(OBJ)
	gcc -o \$(NAME) \$(OBJ) main.c

re:	fclean all

clean:
	rm -f \$(OBJ)
	rm -f \$(LIB_NAME)
	rm -f \$(NAME)

fclean:	clean
	rm -f \$(NAME)