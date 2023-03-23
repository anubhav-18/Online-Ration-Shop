#include <iostream>
using namespace std;

class alpha
{
    int a;

public:
    alpha (int w)
    {
        a = w;
    }
    void put_a()
    {
        cout << a;
    }
};
class beta
{
    float b;

public:
    beta (float x)
    {
        b = x;
    }
    void put_b()
    {
        cout << b;
    }
};
class gamma : public alpha , public beta
{
    int c, d;

public:
    gamma(int r, float s, int y, int z) : alpha(r), beta(s)
    {
        c = y;
        d = z;
    }
    void put_c()
    {
        cout << c << endl;
        cout << d << endl;
    }
};

int main()
{
    gamma obj(1, 1.7, 2, 5);
    obj.put_a();
    cout<<"\n";
    obj.put_b();
    cout<<"\n";
    obj.put_c();
    return 0;
}