#include<iostream>
using namespace std;

int main(){
    int n , a=0 ,b=0 ;
    cout<<"Enter any Four no.: "<<endl;
    cin>>n;
    b=n%10;
    while(n!=0)
    {
        a=n%10;
        n=n/10;
    }
    a=b;
    b=a;
    cout<<n<<endl;
    return 0;
}