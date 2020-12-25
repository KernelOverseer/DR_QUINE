# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abiri <kerneloverseer@pm.me>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/25 16:47:17 by abiri             #+#    #+#              #
#    Updated: 2020/12/25 17:09:16 by abiri            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
COLLEEN_SOURCE = $(COLLEEN).c
GRACE_SOURCE = $(GRACE).c
SULLY_SOURCE = $(SULLY).c
CC = gcc
CFLAGS = -Wall -Werror -Wextra

all: $(COLLEEN) $(GRACE) $(SULLY)
$(COLLEEN):
	@$(CC) $(CFLAGS) $(COLLEEN_SOURCE) -o $(COLLEEN)
$(GRACE):
	@$(CC) $(CFLAGS) $(GRACE_SOURCE) -o $(GRACE)
$(SULLY):
	@$(CC) $(CFLAGS) $(SULLY_SOURCE) -o $(SULLY)
clean:
fclean:
	rm -f $(COLLEEN) $(GRACE) $(SULLY)
re: fclean all
