#include<iostream>
using namespace std;

class node
{
    public:
        int data;
        node* next ;
        node* prev;

        node(int data)
        {
            this -> data = data;
            this -> next = NULL;
            this -> prev = NULL;
        }

        ~node()
        {
            int value = this -> data ;
            if( this -> next != NULL )
            {
                delete next;
                next = NULL ;
            }
            cout << " memory is free for " << value << endl;
        }
};

void insertAthead(node* &head , node* &tail , int d)
{   
    if(head == NULL)
    {
        node* temp = new node(d);
        head = temp;
        tail = temp;

    }
    else
    {
        node* temp = new node(d);
        temp -> next = head;
        head -> prev = temp;
        head = temp ;
    }
    

}

void insertAttail(node* &tail , node* head , int d)
{
    if(tail == NULL)
    {
        node* temp = new node(d);
        head = temp;
        tail = temp;

    }
    else
    {
        node* temp = new node(d);
        tail -> next = temp;
        temp -> prev = tail;
        tail = temp ;
    }
}

void insertAtPosition(node* &head, node* &tail , int d , int pos)
{
    if(pos == 1)
    {
        insertAthead(head , tail , d);
        return ;
    }

    node* temp = head;
    int c = 1 ;
    while(c < pos - 1 )
    {
        temp = temp -> next ;
        c++;
    }

    if(temp -> next == NULL)
    {
        insertAttail(tail , head , d);
        return ;
    }

    node* nodetoinsert = new node(d);
    nodetoinsert -> next = temp -> next ;
    temp -> next -> prev = nodetoinsert;
    nodetoinsert -> prev = temp ; 
    temp -> next = nodetoinsert;
    

}

void deletionpos(node* &head , node* &tail , int pos)
{
    if(pos == 1)
    {
        node* temp = head;
        temp -> next -> prev = NULL;
        head = temp -> next ;
        temp -> next = NULL;
        delete temp;
    }
    else
    {
        node* curr = head;
        node* prev = NULL;

        int c = 1 ;
        while(c < pos)
        {
            prev = curr ;
            curr = curr -> next ;
            c++;
        }
        if(curr == tail)
        {
            curr -> prev = NULL;
            prev -> next = curr -> next ;
            curr -> next = NULL;
            tail = prev ;
            delete curr ;
        }
        else
        {
            curr -> prev = NULL;
            prev -> next = curr -> next ;
            curr -> next = NULL;
            delete curr ;
        }
    }
}

void getlength(node* &head)
{
    int l = 0 ;
    node* temp = head;
    while(temp != NULL)
    {
        l++;
        temp = temp -> next;
    }
    cout << "length = " << l ;
    cout << endl ;

}

void print(node* head)
{
    if(head == NULL)
    {
        cout << "List is empty " << endl ;
    }

    node* temp = head;
    while(temp != NULL)
    {
        cout << temp -> data << " " ;
        temp = temp -> next ;
    }
    cout << endl;
    return ;
}

int main()
{

    node* head = NULL;
    node* tail = NULL;
        
    insertAthead(head , tail , 12);
    print(head);
    
    insertAttail(tail , head , 15);
    print(head);

    insertAtPosition(head, tail , 29 , 3);
    print(head);
    cout << "head = " <<  head -> data << " " << " tail = " << tail -> data << endl;

    deletionpos(head , tail , 2);
    print(head);  
     cout << "head = " <<  head -> data << " " << " tail = " << tail -> data << endl;

    return 0 ;
}