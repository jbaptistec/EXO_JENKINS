MY_COMPILER=gcc
SRC=src

all: main.o messages.o args.o
	$(MY_COMPILER) -o main_app main.o messages.o args.o

main.o: src/main.c src/args.h src/colors.h
	$(MY_COMPIKLER) -c src/main.c -o main.o

message.o: messages.c messages.h colors.h
	$(MY_COMPILER) -c src/messages.c -o messages.o

args.o: src/args.c src/args.h src/messages.h src/colors.h
	$(MY_COMPILER) -c src/args.c -o args.o

math_functions.o: src/math_functions.c src/math_functions.h
	$(MY_COMPILER) -c src/math_functions.c -o math_functions.o

test: math_functions.o 
	gcc -c test/main.c -o main_test.o
	gcc -o main_test main_test.o math_functions.o

clean:
	rm -f *.o
