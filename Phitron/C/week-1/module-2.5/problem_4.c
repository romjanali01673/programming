#include <stdio.h>
int main(){
    int a ;
    printf("enter the value of A : ");
    scanf("%d", & a);
    if ( a == 0){
        printf("the number is positive.");
    }
    else if(a < 0){
        printf("the number is negative.");
    }
    else{
        printf("the number is positive.");
    }
}