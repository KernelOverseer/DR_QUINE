#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#define OPEN_FLAGS O_WRONLY | O_CREAT | O_TRUNC
#define PERM_FLAGS S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH
#define FT(x) int main(void){x (fd, #x")\n");close(fd);}

/*
   Commentaire
*/

FT(int fd;fd = open("Grace_kid.c", OPEN_FLAGS, PERM_FLAGS);dprintf(fd, "#include <stdio.h>\n#include <fcntl.h>\n#include <unistd.h>\n#define OPEN_FLAGS O_WRONLY | O_CREAT | O_TRUNC\n#define PERM_FLAGS S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH\n#define FT(x) int main(void){x (fd, #x\")\\n\");close(fd);}\n\n/*\n   Commentaire\n*/\n\nFT(");dprintf)
