#include <iostream>
using namespace std;

class A
{
public:
    int n;
    void get()
    {
        n = 3;
    }
    void put()
    {
        cout << n;
    }
    // int inc(A&a)
    int inc(A a)
    {
        return a.n++;
    }
};
int main()
{
    A b;
    b.get();
    b.put();
    return 0;
}