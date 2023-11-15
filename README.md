# libasm
**A gentle guide to lobotomy**

## Overview
The purpose of this project is to get familiar with x86-64 assembly language 
- Understand how functions are called at a low level
- Write assembly code that compiles into a library
- Mimic a subset of the standard C library functions

## Requirements
- The library must compile with nasm
- The library should implement the following functions:
  - `ft_strlen`: calculate the length of a string
  - `ft_strcpy`: copy a string
  - `ft_strcmp`: compare two strings
  - `ft_write`: write output to a file descriptor
  - `ft_read`: read input from a file descriptor
  - `ft_strdup`: duplicate a string

## Testing Program

This repository includes a `main.c` file which acts as a test suite for the provided asm functions  
By running the tests, users can visually compare the output against expected results, verifying the correct operation of each function

To run the tests:
```bash
make test
```
---

### Note
In main.c, the test strings are hardcoded for demonstration purposes  
To test different strings, simply change the string literals passed in the main function. For example:

```c
test_strlen("your_custom_string");
test_strcpy("your test string");
... etc
```

<div align="center">

![best_language](https://github.com/spookier/libasm/assets/77325667/3a7ea47e-d004-492b-8fb9-8802bfd0eec7)

</div>
