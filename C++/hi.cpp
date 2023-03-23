#include <iostream>
using namespace std;

int main() {
    float sal ;
	char grade ;
	float hra , da , allow , pf , ts , ts1;
	cin >> sal >> grade ;
	hra = (sal * 20)/100 ;
	da = (sal * 50)/100 ;
	pf = (sal * 11)/100 ;
	if(grade == 65)
	{
		allow = 1700 ;
	}
	else if(grade == 66)
	{
		allow = 1500 ;
	}
	else
	{
		allow = 1300 ;
	}
    
	ts = sal + hra + da + allow - pf ;
    ts1 = ts - int(ts) ;
    if(ts1 > 50)
    {
        cout<< int(ts) + 1 << endl ; 
    }
    else
    {
        cout<< int(ts) << endl ;
    }    
    return 0;
}


cout << "hra " << hra << endl;
    cout << "sal " << sal << endl;
    cout << "pf " << pf << endl;
    cout << "allow " << allow << endl;
    cout << "da " << da << endl;