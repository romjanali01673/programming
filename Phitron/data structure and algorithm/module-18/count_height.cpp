// rule of level order traversal

// at fast root will be inserted in a queue 
// root will print and it's child node will be inserted in queue 
// folowing that every parent print himself and insert it's children Node.



#include<bits/stdc++.h>
using namespace std;
class Node{
    public :
        int val;
        Node * left;
        Node * right;
        Node(int val)
        {
            this->val=val;
            left  = NULL;
            right = NULL;
        }
};

void level_order(Node * root)
{
    queue <Node*> qu;
    qu.push(root);

    while (!qu.empty())
    {
        Node * a = qu.front();
        qu.pop();
        if(!a);
        else
        { 
            cout<<a->val<<" ";
            if(a->left) qu.push(a->left);
            if(a->right) qu.push(a->right);
        }
    }
}

Node* level_order_input_binary_tree(void)
{
    int i;
    cin>>i;
    Node * root = NULL;

    if(i==-1) return root;

    root = new Node(i);
    queue<Node*>qu;
    qu.push(root);
   
    while(!qu.empty())
    {
        //take
        Node * p = qu.front();
        qu.pop();

        //opration
        int l, r;
        cin>>l>>r;
        Node* myLeft;
        Node * myRight;
        if(l==-1) 
            myLeft =NULL;
        else 
            myLeft= new Node(l);
        if(r==-1) 
            myRight = NULL;
        else 
            myRight= new Node(r);

        p->left = myLeft;
        p->right = myRight;

        //insertion
        if(p->left)
            qu.push(p->left);
        if(p->right)
            qu.push(p->right);
    }
    return root;
}
int count_height(Node * root)
{
    if(root == NULL) return 0;
    int l  = count_height(root->left);
    int r  = count_height(root->right);
    return max(l,r)+1;
}
int main(){

    Node * root = level_order_input_binary_tree();    
    level_order(root);
    cout<<count_height(root);
return 0;
}