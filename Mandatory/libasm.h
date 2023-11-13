#ifndef LIBASM_H
#define LIBASM_H

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>

#include <string.h> // To test real strlen

size_t 		ft_strlen(const char *str);
char 		*ft_strcpy(char *dst, const char *src);

// int			ft_strcmp(const char *s1, const char *s2);
// void 		ft_write(int fildes, const void *buf, size_t nbyte);
// size_t		ft_read(int fildes, void *buf, size_t nbyte);
// char		*ft_strdup(const char *s1);

#endif