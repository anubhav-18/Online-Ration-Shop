#include <iostream> using namespace std; class node
{
public:
    int data;
    node *next;
    node(int data)
    {
        this->data = data;
        next = NULL;
    }
};
void insertLast(node *head, int data)
{
    node *temp = head;
    while (temp->next != NULL)
    {
        temp = temp->next;
    }
    node *newNode = new node(data);
    temp->next = newNode;
}

node *deleteNode(node *head, int index)
{
    node *temp = head;
    int i = 0;
    if (index == 0)
    {
        head = head->next;
        free(temp);
    }
    else
    {
        node *temp2 = head;
        while (i < index - 1)
        {
            temp = temp->next;
            i++;
        }
        temp2 = temp->next;
        temp->next = temp2->next;
        free(temp2);
    }
    return head;
}
int search(node *head, int x)
{
    int count = 0;
    while (head != NULL)
    {
        if (head->data == x)
        {
            return count;
        }
        count++;
        head = head->next;
    }
    return -1;
}
void printList(node *head)
{
    while (head != NULL)
    {
        cout << head->data << " ";
        head = head->next;
    }
    cout << endl;
}
int main()
{
    node *head = NULL;
    while (true)
    {
        int n;
        cout << endl;
        cout << "Enter 1 to insert an element." << endl;

        cout << "Enter 2 to delete and element." << endl;
        cout << "Enter 3 to search an element." << endl;
        cout << "Enter 4 to print all the elements." << endl;
        cout << "Enter 0 to end the program." << endl
             << endl;
        cout << "Enter a number: ";
        cin >> n;
        cout << endl;
        if (n == 1)
        {
            int x;
            cout << "Enter the number of elements you want to insert: ";
            cin >> x;
            int k = 0;
            for (int i = 0; i < x; i++)
            {
                int nodedata;
                cout << "Enter data: ";
                cin >> nodedata;
                if (head == NULL)
                {
                    node *newnode = new node(nodedata);
                    head = newnode;
                }
                else
                {
                    insertLast(head, nodedata);
                }
            }
        }
        if (n == 2)
        {
            int index;
            cout << "Enter index to be deleted: ";
            cin >> index;
            head = deleteNode(head, index);
        }
        if (n == 3)
        {
            int value;
            cout << "Enter the value to be searched: ";
            cin >> value;
            cout << "Value is at index: " << search(head, value) << endl;
        }
        if (n == 4)
        {
            cout << endl;
            printList(head);
        }
        if (n == 5)
        {
            break;
        }
    }
    return 0;
}
