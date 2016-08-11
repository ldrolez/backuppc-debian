#include <unistd.h>

#define REAL_PATH "/usr/share/backuppc/lib/realindex.cgi"

int main(ac, av)
char **av;
{
    execv(REAL_PATH, av);
    return 0;
}

