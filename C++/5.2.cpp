#include<iostream>
using namespace std;

class student
{
    int uid;
    public:
        void getnumber()
        {
            cin >> uid ;
        }
        void putnumber()
        {
            cout << uid << endl ;
        }
};

class test
{
    int phy , chem , math ;
    public:
        void getmarks()
        {
            cin >> phy >> chem >> maths ;
        }
        void putmarks()
        {
            cout<<"PHYSICS = "<< phy << endl;
            cout<<"CHEMISTRY = "<< chem << endl;
            cout<<"MATHS = "<< math << endl;
        }
};

class sport : public student
{
    int score ;
    public:
        void getscore()
        {
            cin >> score ;
        }
        void putnumber()
        {
            cout << "This is UID " << uid ;
        }
        void putscore()
        {
            cout << "have Score " << score << endl ;
        }
}

class result : public test , public sports 
{
    if()
}

int main(){
    
    return 0;
}