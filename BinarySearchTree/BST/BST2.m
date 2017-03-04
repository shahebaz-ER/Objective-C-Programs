
#import <Foundation/Foundation.h>
#import "BST2.h"

@implementation Binary

struct Node *root;
-(void)createTree:(struct Node *)temp andItem:(int)data{
    
}
-(BOOL)Insert:(int)data{
    struct Node *temp=(struct Node*) malloc(sizeof(struct Node));
   
    temp->data=data;
    temp->right=NULL;
    temp->left=NULL;
    struct Node *current;
    struct Node *parent;
    if(root==NULL){
        root=temp;
    }
    else{
        current=root;
    
    while(current){
        parent=current;
       if (temp->data==current->data)
        {
        return false;
        }
        else if(temp->data>current->data)
        {
            current=current->right;
            if (current==NULL)
            {
                parent->right=temp;
                return TRUE;
            }
        }
        else if(temp->data<=current->data)
        {
            current=current->left;
            if (current==NULL)
            {
                parent->left=temp;
                return true;
            }
        }
    
    };}
    
    return false;
}
-(struct Node *)Search:(int)data{
    struct Node *current=root;
    while (current->data!=data)
    {
        printf("%d",current->data);
        if (current->data>data) {
            current=current->left;
        }
        else{
            current=current->right;
        }
        if (current==NULL) {
            return NULL;
        }
    }
    return current;
}
-(void)delete1:(int)data
{   int item;
    
    struct Node *current=[self getTree];
    
    struct Node *predecer;
    struct Node *succesor;
    int dcase;
    int flag=0;
    // check location
        if (data>current->data)
        {
            predecer=current;
            current=current->right;
        }
        else if(data<current->data)
        {   predecer=current;
            current=current->left;
        }
        else
        {
            flag=1;
        }
    
    if (flag==0)
    {
        printf("\nSorry ! node not found.");
    }
    
    // total case
    dcase=1;//Node has no child
    dcase=2;//Node has one child
    dcase=3;//Node has two child
    //case 1
    if(predecer->left==current)
    {
        if (current->left==NULL && current->right==NULL)
        {
            predecer->left=NULL;
        }
        
        
    }
    else
    {
        if (current->left==NULL && current->right==NULL) {
            predecer->right=NULL;
        }
    }
    
   //case 2
    
    if(predecer->left==current)
    {
        if (current->left==NULL && current->right!=NULL)
        {
            predecer->left=current->right;
        }
        else if(current->left!=NULL && current->right==NULL)
        {
            predecer->left=current->left;
        }
        
        
    }
    else
    {
        if (current->left==NULL && current->right!=NULL)
        {
            predecer->right=current->right;
        }
        else if(current->left!=NULL && current->right==NULL)
        {
            predecer->right=current->left;
        }
    }
   //case 3
    if(predecer->left==current)
    {
        if (current->left!=NULL && current->right!=NULL)
        {
            succesor=current->right;
            while(succesor->left!=NULL)
            {
                succesor=succesor->left;
            }
            
            item=succesor->data; //copy succesor data into item;
            [self delete1:item];
            current->data=item;
        }
        
        
    }
    else
    {
        if (current->left!=NULL && current->right!=NULL)
        {
            succesor=current->right;
            while(succesor->left!=NULL)
            {
                succesor=succesor->left;
            }
            
            item=succesor->data; //copy succesor data into item;
            [self delete1:item];
            current->data=item;  //replace current data with item
        }
    }
  
}

-(struct Node *)getTree{
    struct Node *current;
    current=root;
    return current;
}

-(void)inOrder:(struct Node*)current{
    if (current!=NULL) {
        
        [self inOrder:current->left];
        printf("\t%d",current->data);
        [self inOrder:current->right];
    }
}

-(void)preOrder:(struct Node*)current{
    if (current!=NULL) {
        
        printf("\t%d",current->data);
        [self preOrder:current->left];
        [self preOrder:current->right];
    }
}
-(void)postOrder:(struct Node*)current{
    if (current!=NULL)
    {
        
        [self postOrder:current->left];
        [self postOrder:current->right];
        printf("\t%d",current->data);
    }
}

@end
