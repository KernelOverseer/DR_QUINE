#include<stdio.h>
#include<unistd.h>
#include<fcntl.h>
#include<stdlib.h>
#define PROG_NAME_FORMAT "Sully_%d.c"
#define EXEC_COMMAND "gcc %s -o sully_junior;./sully_junior;rm -f sully_junior"
void run_program(char *name){char buff[512];sprintf(buff,EXEC_COMMAND,name);system(buff);}
void getname(char *buff,int n){sprintf(buff,PROG_NAME_FORMAT,n);}
void advance_i(int *i){char name[512];getname(name,*i);if(access(name,F_OK)==-1){(*i)++;}}
#define FT(x) x(fd,"%s", #x")\n");close(fd);run_program(name);return (0);}
int main(void){
int i = 5;
if (i<=0)return(0);advance_i(&i);char name[512];getname(name,i-1);
FT(int fd;fd = open(name, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);dprintf(fd, "#include<stdio.h>\n#include<unistd.h>\n#include<fcntl.h>\n#include<stdlib.h>\n#define PROG_NAME_FORMAT \"Sully_%%d.c\"\n#define EXEC_COMMAND \"gcc %%s -o sully_junior;./sully_junior;rm -f sully_junior\"\nvoid run_program(char *name){char buff[512];sprintf(buff,EXEC_COMMAND,name);system(buff);}\nvoid getname(char *buff,int n){sprintf(buff,PROG_NAME_FORMAT,n);}\nvoid advance_i(int *i){char name[512];getname(name,*i);if(access(name,F_OK)==-1){(*i)++;}}\n#define FT(x) x(fd,\"%%s\", #x\")\\n\");close(fd);run_program(name);return (0);}\nint main(void){\nint i = %d;\nif (i<=0)return(0);advance_i(&i);char name[512];getname(name,i-1);\nFT(", i-1);dprintf)
