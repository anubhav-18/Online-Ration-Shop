#include<iostream>
using namespace std;

class Node {
    public:
        int data;
        Node* next;
        Node(int data) 
        {
            this -> data = data ;
            this -> next = NULL ;
        }
        ~Node()
        {
            int value = this -> data ;
            if( this->next != NULL)
            {
                delete next ;
                this -> next = NULL ;
            }
            cout << " Memory is free " << value << endl ;
        }
};

void insertAtHead(Node* &head, int d) 
{
    Node* temp = new Node(d);
    temp -> next = head;
    head = temp;
}

void insertAtTail(Node* &tail, int d) 
{
    Node* temp = new Node(d);
    tail -> next = temp;
    tail  = temp;
}

void insertAtPosition(Node* &head, Node* &tail, int d, int position) 
{
    if(position == 1) 
    {
        insertAtHead(head, d);
        return;
    }

    Node* temp  = head;
    int cnt = 1;

    while(cnt < position-1) 
    {
        temp = temp -> next;
        cnt++;
    }

    if(temp -> next == NULL) 
    {
        insertAtTail(tail,d);
        return ;
    }

    Node* nodeToInsert = new Node(d);
    nodeToInsert -> next = temp -> next;
    temp -> next = nodeToInsert;
}

// void len(Node* &head)
// {
//     int l = 0 ; 
//     Node*  temp = head ;
//     whiel( temp != NULL)
//     {
//         l++;
//         temp = temp -> next ;
//     }
//     return l ;
// }

void deletion(Node* &head , Node* &tail, int pos)
{
    if(pos == 1 )
    {   
        Node* temp = head ;
        head = head -> next ;
        temp -> next = NULL;
        delete temp ;  

    }
    else
    {
        Node* curr = head;
        Node* prev = NULL;
        int c = 1 ;
        while( c < pos)
        {
            prev = curr;
            curr = curr -> next ;
            c++;
        }
        if(curr == tail)
        {
            prev -> next = curr -> next ;
            tail = prev ;
            delete curr ;
        }
        else
        {
            prev -> next = curr -> next ;
            curr -> next = NULL ;
            delete curr ; 
        }       
    }
    

}

void print(Node* &head) {

    if(head == NULL) 
    {
        cout << "List is empty "<< endl;
    }
    Node* temp = head;

    while(temp != NULL ) {
        cout << temp -> data << " ";
        temp = temp -> next;
    }
    cout << endl;
}

int main(){
    
    Node* node1 = new Node(1);

    Node* head = node1; 
    Node* tail = node1;

    insertAtHead(head , 10);

    insertAtTail(tail , 2);
    insertAtTail(tail , 3);
    insertAtTail(tail , 5);
    insertAtTail(tail , 6);
    
    insertAtPosition(head , tail , 4 , 5 );

    print(head);

    deletion(head , tail , 7);
    print(head);
    cout << "head = " << head -> data << " " << endl ;
    cout << "tail = " << tail -> data << " " << endl ;

    return 0;
}
