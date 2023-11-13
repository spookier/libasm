NAME = libasm

NAME_LIB = libasm.a
CC = cc
CFLAGS = -Wall -Wextra -Werror

RANLIB = ranlib

NASM = nasm
NASMFLAGS = -f elf64

FILES = 	ft_strlen.s \

OBJ_FILES = $(FILES:.s=.o)

%.o : %.s
	$(NASM) $(NASMFLAGS) $< -o $@

all : $(NAME)

$(NAME) : $(OBJ_FILES)
	ar rcs $(NAME_LIB) $(OBJ_FILES)

clean :
	rm -f $(OBJ_FILES)

fclean : clean
	rm -f $(NAME_LIB) $(OBJ_FILES)

re : 
	make fclean
	make all


# TO TEST ALL FUNCTIONS AS ASKED IN THE SUBJECT

test :
	make re
	$(CC) $(CFLAGS) main.c -L. -lasm -o test.out
	./test.out

	 

.PHONY : all clean fclean re test