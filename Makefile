CC=g++

APP_NAME=hello-world

$(APP_NAME): main.o
	$(CC) main.o -o $(APP_NAME)

main.o: main.cpp
	$(CC) -c main.cpp

run:
	@./$(APP_NAME)

clean:
	rm *.o $(APP_NAME)
