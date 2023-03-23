#include <bits/stdc++.h>
using namespace std;

int main() {
	// your code goes here
	int t ;
	cin >> t;
	while(t--) {
	    int l , s ;
	    cin >> l ; 
	    cin >> s ;
	    int x =  0 , y , max_y =  INT_MIN ;
	    for(int i = 1 ; i<=l ; i++) {
	        x = x ^ (x>>y);
	        if(x>max_y) {
	            max_y = i ;
	        }
	    }
	    cout << max_y << endl ;
	    
	}
	return 0;
}
