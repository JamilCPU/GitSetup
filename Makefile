CC = gcc
CFLAGS = -Wall -lxml2
TARGET = parse_xml
SOURCES = parse_xml.c

all: $(TARGET)

$(TARGET): $(SOURCES)
    $(CC) $(CFLAGS) -o $(TARGET) $(SOURCES)

clean:
    rm -f $(TARGET)


