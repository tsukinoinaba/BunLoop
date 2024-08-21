default: main.c
	gcc main.c -lsndfile -o main

ansi: main.c
	gcc main.c -lsndfile -o main -ansi -pedantic -Wall -Werror
