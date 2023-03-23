#include<iostream>
using namespace std;

class X
{
    int a , b ;
    public:
    void get(int x , int y)
    {
        a = x ;
        b = y ;
    }
    friend float mean(X);
};
float mean(X S)
{
    return float(S a + S b)/2;
}
int main(){
    X b ;
    t.get(10,20);
    mean(t)
    cout<<"Mean is "<<mean(t);    
    return 0;
}