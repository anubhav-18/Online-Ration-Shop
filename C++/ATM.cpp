#include<iostream>
using namespace std;

int main()
{
    int x ;
    float y , w ;
    cin>>x;
    cin>>y;
    w = y - x - 0.5;
    if(w>=0 && x%5==0)
    {
        cout<<w<<endl;
    }    
    else
    {
        cout<<y<<endl;
    }
    
    return 0;
}