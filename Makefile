# Basic Makefile for small scale projects
# Author: Karl Noory

# Chosing compiler
CC=g++

# Setting application name
APP_NAME=hello-world

# Final target
$(APP_NAME): main.o
	$(CC) main.o -o $(APP_NAME)

# Sub target
main.o: main.cpp
	$(CC) -c main.cpp

# Run target
run:
	@./$(APP_NAME)

# Remove all object files
clean:
	rm *.o $(APP_NAME)
