#include <iostream>
using namespace std;

class cube
{
    float l, b, h;
    float v;

public:
    void cube(float x, float y, float z);
    void cube();
    void display();
};

cube ::void cube(float x, float y,float z)
{
    l = x;
    b = y;
    h = z;
    v = l * b * h;
}

cube ::void display()
{
    cout << "LENGTH = " << l << endl;
    cout << "BREADTH = " << b << endl;
    cout << "HEIGHT = " << h << endl;
}

cube ::void cube()
{
    cout << "VOLUME = " << v << endl;
}

int main()
{
    cube x(10, 15.5, 16.254);
    x.display();
    x.cube();
    return 0;
}
