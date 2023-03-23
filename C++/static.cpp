#include <iostream>
using namespace std;
int f(int a, int b, int c=10, int d=20){return a+b+c+d;}
int main(){
	cout<</*f(5,6,7,8)<<','<<*/f(5,6,7)<<','<<f(5,6);
}