CC = gcc
CFLAGS = -Wall -I"C:\cygwin64\usr\include\libxml2"
SOURCES = parse_xml.c
TARGET = parse_xml

all: $(TARGET)

build: all

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCES) -lxml2

clean:
	rm -f $(TARGET)


