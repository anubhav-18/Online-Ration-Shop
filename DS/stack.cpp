#include<iostream>
#include<stack>
using namespace std;

/* class stack
{
    public:
        int *arr , top , size ;

        stack(int s)
        {
            this -> size = s ;
            top = -1 ;
            arr = new int[s];
        }

        void push(int element)
        {
            if(size - top > 1)
            {
                top++;
                arr[top] = element ;
            }
            else
            {
                cout << "Stack is Overflow " << endl ;
            }

        }

        void pop()
        {
            if(top>=0)
            {
                top--;
            }
            else
            {
                cout << "Stack is Underflow" << endl ;
            }
        }

        int peek()
        {
            if(top>=0)
            {
                return arr[top] ;
            }
            else
            {
                cout << "Stack is Empty" << endl ;
            }
        }

        bool isEmpty()
        {
            if(top==-1)
            {
                cout << "Stack is empty" << endl ;
            }
            else
            {
                cout << "Stack is not empty" << endl ;
            }
        }
};

*/
int main(){
    // stack s(5);

    // s.push(22);
    // s.push(48);
    // s.push(56);

    // s.pop();
    // cout << s.peek() << endl ;

    // s.pop();
    // cout << s.peek() << endl ;

    // s.pop();
    // // cout << s.peek() << endl ;

    // s.isEmpty();

    //REVERSE A STRING USING STACK
    string str = "ANUBHAV" ;

    stack<char> s ;
    for(int i = 0 ; i<str.length() ; i++)
    {
        // char ch = str[i];
        s.push(str[i]);
    }

    string ans = " " ;

    while(!s.empty()) {
        char ch = s.top();
        ans.push_back(ch);

        s.pop();
    }

    cout << "REVERSE STRING : " << ans << endl ;


    return 0;
}