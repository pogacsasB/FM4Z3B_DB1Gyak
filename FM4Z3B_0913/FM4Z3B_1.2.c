#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    FILE *fp;
    char ch;
    char fajlnev[50];
    printf("A fajl neve: ");
    scanf("%s", fajlnev);
	
    fp = fopen(fajlnev, "w");
    printf("Az uzenet: ");
	
    while( (ch = getchar()) != '#') {
        putc(ch, fp);
    }
    fclose(fp);
	
    fp = fopen(fajlnev, "r");
    while ( (ch = getc(fp)) != EOF ) {
        printf("%c", toupper(ch));
    }
    fclose(fp);

    char fajlnev2[50] = "Atmeneti";
    FILE *fpp = fopen(fajlnev2, "w");
    fp = fopen(fajlnev, "r");
    fseek(fp, 0L, SEEK_END);
    int pos = ftell(fp);
    fseek(fp, 0L, SEEK_SET);

    while (pos--)
    {
        ch = fgetc(fp);
        fputc(toupper(ch), fpp);
    }

    fclose(fp);
    fclose(fpp);

    remove(fajlnev);
    rename(fajlnev2, fajlnev);

    return 0;
}