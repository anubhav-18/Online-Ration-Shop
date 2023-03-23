#include<iostream>
using namespace std;

int main(){
    int s , l = 6 , i ;
    cin >> s ;
    int arr[] = {15 , 16 , 5 , 10 , 8 , 9};
    for(i = 0 ; i < l ; i++ )
    {
        if( arr[i]==s )
        {
            cout << s << " IS FOUND AT INDEX " << i ;
            break ;
        }
    }
    if(i == l )
    {
        cout << s << " IS NOT FOUND " ; 
    }
    return 0;
}