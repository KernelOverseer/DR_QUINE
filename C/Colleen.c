#include <stdio.h>

/*
   Outside
*/

void	print_code(void)
{
	char *code = "#include <stdio.h>%c%c/*%c   Outside%c*/%c%cvoid	print_code(void)%c{%c	char *code = %c%s%c;%c%c	printf(code, 10, 10, 10, 10, 10, 10, 10, 10, 34, code, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);%c}%c%cint main(void)%c{%c	/*%c	   Inside main%c	*/%c	print_code();%c	return (0);%c}%c";

	printf(code, 10, 10, 10, 10, 10, 10, 10, 10, 34, code, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);
}

int main(void)
{
	/*
	   Inside main
	*/
	print_code();
	return (0);
}
