#include <iostream>
#include <cmath>
using namespace std;

int main() {
	// your code goes here
	int t;
	cin >> t ;
	while(t--)
	{
	    int x ;
	    float s ;
	    cin >> x ;
	    s = x / 25 ;
        if(x>=1 && x<=25)
        {
            cout << 1 << endl ;
        }
        else{
            cout << round(s)<< endl;
        }
	}
	return 0;
}
