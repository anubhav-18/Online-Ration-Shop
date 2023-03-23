#include<iostream>
int main(){
    int i =0 , x=0;
    for(i=1;i<=10;i*=2)
    {
        x++;
        std::cout<<x;
    }
    std::cout<<x;
    return 0;
}