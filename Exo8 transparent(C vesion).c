#include <stdio.h>
#include <stdlib.h>
#define N 286

int main(){
    int i=0;
    int somme2=0;
    int somme4=0;
    int somme8=0;
    while (i<=N)
    {
        if(i%2==0){
            somme2=somme2+i;
            if(i%4==0){
                somme4=somme4+i;
                if(i%8==0){
                    somme8=somme8+i;
                }
            }
        }
        i+=1;
    }
    printf("somme2: %d somme4: %d somme8: %d",somme2,somme4,somme8);
    

}