#include<iostream>
using namespace std;

int main(){
    int low = 0 , high = 7  , mid , s , i , a ;
    cin >> s;
    int arr[] = {2 , 5 , 9 , 10 , 15 , 20 , 29 , 89 };
    mid = ( high + low )/ 2 ;
    
    if(s == arr[mid])
    {
        cout << s << " IS FOUND AT INDEX " << mid  ;
    }
    
    else if (s > arr[mid])
    {
        for( i = mid+1 ; i <= high ; i++ )
        {
            if( arr[i] == s )
            { 
                cout << s << " IS FOUND AT INDEX " << i ;
                break ;
            }
        }
    }

    else if(s < arr[mid])
    {
        for( a = mid-1 ; a>= low ; a-- )
        {
            if( arr[a] == s )
            { 
                cout << s << " IS FOUND AT INDEX " << a ;
                break;
            }
        }
    }
    
    else
    {
        cout << s << " IS NOT FOUND ";
    }

    return 0;
}