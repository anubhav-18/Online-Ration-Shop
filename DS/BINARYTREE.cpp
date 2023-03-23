#include<iostream>
#include<queue>
using namespace std;

class node { 
    public:
        int data ;
        node* right ; 
        node* left ; 

        node(int d) { 
            this -> data = d ;
            this -> left = NULL ;
            this -> right = NULL ;
        } 
};

node* BuildTree(node* root) {
    cout << "Enter the Data: " << endl ;
    int d ;
    cin >> d ; 
    root = new node(d);

    if(d == -1 ) {
        return NULL ;
    }

    cout << "Enter data in the left of " << d << endl ;
    root -> left = BuildTree(root->left);
    cout << "Enter data in the right of " << d << endl ;
    root -> right = BuildTree(root->right); 

    return root ;
}

void levelOrderTravesel (node* root) {
    queue<node*> q ;
    q.push(root) ;

    while(!q.empty()) {
        node* temp  = q.front();
        cout << temp -> data << " " ;
        q.pop();
        
        if(temp -> left) {
            q.push(temp -> left);
        }
        if(temp -> right) {
            q.push(temp -> right);
        }
    }
}
//1 2 3 -1 -1 5 -1 -1 -1 -1


int main(){
    node* root = NULL ;

    BuildTree(root);
    levelOrderTravesel(root);

    return 0;
}