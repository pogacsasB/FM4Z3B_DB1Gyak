#include <stdlib.h>

#include <string.h>

#include <stdio.h>



int main()

{
    FILE *fp, *fpp;
	char ch;
    char fajlnev1[50];
    char fajlnev2[50] = "masolat.txt";

    printf("A fajl neve: ");
    scanf("%s", fajlnev1);
    fp = fopen(fajlnev1, "w");
	printf("Az uzenet: ");

    while( (ch = getchar()) != '#') {

        putc(ch, fp);
    }

    fclose(fp);

    int pos;
    if ((fp = fopen(fajlnev1, "r")) == NULL) {

        printf("\nHiba a fajl megnyitasa soran!\n");

        return 0;

    }
    else {

        printf("\nFajl megnyitva masolasra\n ");
    }

    fpp = fopen(fajlnev2, "w");
    fseek(fp, 0L, SEEK_END);
    pos = ftell(fp);
    fseek(fp, 0L, SEEK_SET);

    while (pos--) {

        ch = fgetc(fp);
        fputc(ch, fpp);
    }
	
    fclose(fp);
    fclose(fpp);

}