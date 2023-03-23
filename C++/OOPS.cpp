#include<iostream>
using namespace std ;

class Hero
{
    int health;
    char level;

    public:

        void sethealth( int h )
        {
            health = h ;
        }
        void setlevel( char ch)
        {
            level = ch ;
        }
        int gethealth()
        {
            cout<<health<<endl;;
        }
        char getlevel()
        {
            cout<<level<<endl;;
        }
        
};

int main()
{
    // STATIC MEMORY ALLLOCATION
    
    // Hero h1;
    // h1.sethealth(82);
    // h1.setlevel('A');
    // h1.gethealth();
    // h1.getlevel();

    //DYNAMIC MEMORY ALLOCATION

    Hero *h = new Hero ;

    return 0;
}