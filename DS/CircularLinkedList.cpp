#include<iostream>
using namespace std;

class node
{
    public:
        int data;
        node* next;

        node(int data)
        {
            this -> data = data; 
            this -> next = NULL;
        }

        ~node()
        {

        }

};

void insertion(node* &tail, int element , int d)
{
    if(tail == NULL)
    {
        node* newnode = new node(d);
        tail = newnode;
        newnode -> next = newnode ;
    }

    else
    {
        node* curr = tail ;

        while( curr -> data != element)
        {
            curr = curr -> next ;
        }  

        node* temp = new node(d);
        temp -> next = curr -> next ;
        curr -> next = temp ;
      
    }

}

void print(node* &tail)
{
    node* temp = tail;

    if( tail == NULL)
    {
        cout << "List is Empty " << endl ;
        return ;
    }

    do
    {
        cout << tail -> data << " " ;
        tail = tail -> next ;
    } while(tail != temp) ;
    cout << endl ;
   
}

int main(){

    node* node1 = new node(15);
   
    node* tail = node1 ;
    //print(tail);
    insertion(tail , 15 , 3) ;
    print(tail);
    insertion(tail , 3 , 10) ;
    print(tail);

    return 0;
}