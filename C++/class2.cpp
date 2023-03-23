#include <iostream>

#include <conio.h>

using namespace std;

class Electricity

{

    char name[30];

    int unit;

    float Amount;

public:
    void Input()

    {

        cout << "\nEnter the Name and Units of Electricity user: \n";

        cin >> name >> unit;
    }

    void Bill()

    {

        if (unit <= 100)

        {

            Amount = unit * 0.40;

            Amount = Amount + 150;
        }

        else if (unit <= 200 || unit > 100)

        {

            Amount = unit * 0.50;

            Amount = Amount + 150;
        }

        else if (unit <= 300 || unit > 200)

        {

            Amount = unit * 0.60;

            Amount = Amount + 150;
        }
    }

    void print()

    {

        if (Amount >= 250)

        {

            Amount = Amount + 0.15;
        }

        cout << name << "\t" << Amount << endl;
    }
};

int main()

{

    int x, i;

    Electricity R[10];

    cout << "\nEnter the number of electricity users: \n";

    cin >> x;

    for (i = 0; i < x; i++)

    {

        R[i].Input();

        R[i].Bill();
    }

    cout << "\nThe cost of Electricity User(s) are: \n";

    cout << "\nName\t Total cost(Rs)\n";

    cout << "-----------------------\n";

    for (i = 0; i < x; i++)

    {

        R[i].print();
    }

    getch();
}