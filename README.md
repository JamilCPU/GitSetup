# GitSetup

A tiny C program that uses libxml2 to parse an XML file and print the title of every `<book>` in a catalog. It was written as a scratch project to set up and practise a Git and build workflow (a Makefile, a sample input file and a small C source file).

## Stack

- C (GCC) with a Makefile
- libxml2
- `catalog.xml`, a sample book catalog used as input (12 `<book>` entries)

## Running

Install the libxml2 development headers first (for example `libxml2-dev` on Debian/Ubuntu). The Makefile's include path is set for a Cygwin install on Windows (`C:\cygwin64\usr\include\libxml2`); on Linux, change `CFLAGS` to `$(shell xml2-config --cflags)` or `-I/usr/include/libxml2`.

```
make
./parse_xml catalog.xml
```

The program prints one `Title: ...` line per book. `make clean` removes the binary.

## Project layout

- `parse_xml.c` - walks the root element's `<book>` children and prints each `<title>`
- `catalog.xml` - sample data
- `Makefile` - build rules

## Status

Small exercise, not under development.
