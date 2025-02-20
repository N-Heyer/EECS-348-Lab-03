# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c11

# Executable name
TARGET = check_number

# Source and object files
SRCS = main.c isEven.c isOdd.c
OBJS = $(SRCS:.c=.o)

# Default target (compile everything)
all: $(TARGET)

# Build the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Compile each .c file into .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up compiled files
clean:
	rm -f $(TARGET) $(OBJS)
