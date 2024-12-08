CC = gcc
CFLAGS = -Wall -I"C:\cygwin64\usr\include\libxml2"
LDFLAGS = -L"C:\cygwin64\lib" -lxml2 -lz -liconv
TARGET = parse_xml
SOURCES = parse_xml.c

all: $(TARGET)

build: all

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCES)

clean:
	rm -f $(TARGET)


