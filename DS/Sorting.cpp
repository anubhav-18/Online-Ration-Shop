#include<iostream>
using namespace std;

void SelectionSort(int arr[100] , int n)
{   
    bool swapped = false; 
    for( int i =0 ; i < n-1 ; i++)
    {
        int MINindex = i;

        for(int j = i+1 ; j < n ; j++)
        {
            if(arr[MINindex] > arr[j])
            {
                MINindex = j ;
                swapped = true; 
            }
        }
        swap(arr[MINindex] , arr[i]);
        if(swapped == false)
        {
            break ;
        }
    }  
}

void InsertionSort(int arr[100] , int n )
{
    for(int i = 1 ; i < n ; i++)
    {
        int temp = arr[i] ;
        int j = i-1 ;
        for( j ; j >=0 ; j--)
        {
            if(arr[j] > temp )
            {
                arr[j+1] = arr[j];
            }
            else
            {
                break ;
            }
        } 
        arr[j+1] = temp ;

    }
}

void BubbleSort(int arr[100] , int n)
{
    for(int i=1 ; i < n ; i++)
    {
        for(int j =0 ; j < n-i ; j++)
        {
            if(arr[j] > arr[j+1])
            {
                swap(arr[j] , arr[j+1]);
            }
        }
    }
}

void print(int arr[100] , int n)
{
    for(int i =0 ; i < n ; i++)
    {
        cout << arr[i] << " " ;
    }
    cout << endl ;
}

int main(){
    int arr[] = { 1 , 3 , 5 , 8 , 10 , 15 , 28 , 30};
    
    SelectionSort(arr , 8);
    print(arr , 8);

    BubbleSort(arr , 8);
    print(arr ,8);

    InsertionSort(arr , 8);
    print(arr ,8);
        

    return 0;
}