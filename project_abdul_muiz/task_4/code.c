// Write your code here
#include<stdio.h>

int power(int n,int p){
    int value=1;
    for (int i=0;i<p;i++){
        value*=n;
    }
    return value;
}

int main(){
    int n,p,res;
    n=2;p=5;
    res=power(n,p);
    printf("hello %d\n",res);
    return 0;
}