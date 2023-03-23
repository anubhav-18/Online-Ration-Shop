#include<iostream>
using namespace std;

int main(){
    {
       int t , k , a , c = 0;
       cin>>t>>k;// T ---> No. of inputs    k ---> Divisior    a ---> inputs values
       for(int i =1;i<=t;i++)
       {
           cin>>a;
           if(a%k==0)
           {
               c = c + 1;
           } 
       }
       cout<<c;
    }
    return 0;
}