#include<iostream>
using namespace std;

int main(){
    int n , a ; 
    cout<<"ENTER ANY NO. FOR TABLE:"<<endl;
    cin>>n;
    for(int i = 1;i<=10;i++)
    {
        a = n*i;
        cout<<n<<"*"<<i<<"="<<a<<endl;
    }
    return 0;
}