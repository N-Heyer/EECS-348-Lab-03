# Define the compiler
CC = gcc

# Define the flags for the compiler
CFLAGS = -Wall

# Define the name of the final executable
TARGET = check_number

# List of source files
SRCS = main.c iseven.c isodd.c

# Generate object file names from source file names
OBJS = $(SRCS:.c=.o)

# Default target
all: $(TARGET)

# Rule to create the final executable from object files
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Rule to create object files from source files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Rule to clean up all generated files
clean:
	rm -f $(TARGET) $(OBJS)

