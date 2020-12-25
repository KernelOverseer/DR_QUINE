# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abiri <kerneloverseer@pm.me>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/25 16:47:17 by abiri             #+#    #+#              #
#    Updated: 2020/12/25 17:06:16 by abiri            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
COLLEEN_SOURCE = $(COLLEEN).s
GRACE_SOURCE = $(GRACE).s
SULLY_SOURCE = $(SULLY).s
CC = nasm
LD = gcc
CCFLAGS = -f macho64
LDFLAGS = -m64 -lc 2>&-

all: $(COLLEEN) $(GRACE) $(SULLY)
$(COLLEEN):
	$(CC) $(CCFLAGS) $(COLLEEN_SOURCE) -o $(COLLEEN_SOURCE:.s=.o)
	$(LD) $(LDFLAGS) $(COLLEEN_SOURCE:.s=.o) -o $(COLLEEN)
$(GRACE):
	$(CC) $(CCFLAGS) $(GRACE_SOURCE) -o $(GRACE_SOURCE:.s=.o)
	$(LD) $(LDFLAGS) $(GRACE_SOURCE:.s=.o) -o $(GRACE)
$(SULLY):
	$(CC) $(CCFLAGS) $(SULLY_SOURCE) -o $(SULLY_SOURCE:.s=.o)
	$(LD) $(LDFLAGS) $(SULLY_SOURCE:.s=.o) -o $(SULLY)
clean:
	rm -f $(COLLEEN_SOURCE:.c=.o) $(GRACE_SOURCE:.c=.o) $(SULLY_source:.c=.o)
fclean:
	rm -f $(COLLEEN) $(GRACE) $(SULLY)
re: fclean all
