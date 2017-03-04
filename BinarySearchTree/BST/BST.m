
#import <Foundation/Foundation.h>
#import "BST.h"

@implementation BST
struct Node *root;
-(struct Node *)Search:(int)data{
    struct Node *current=root;
    while (current->data!=data) {
        if (current!=NULL)
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
    }
    return current;
}

-(void)Insert:(int)data{
    struct Node *temp=(struct Node*)malloc(sizeof(struct Node));
    temp->data=data;
    temp->left=NULL;
    temp->right=NULL;
    struct Node *parent;
    struct Node *current;
    if (root==NULL) {
        root=temp;
    }
    else{
        current=root;
    }
    while(1)
        {
            parent=current;
            int cdata=(int)current->data;
            if (cdata<data)
            {
                current=current->right;
                if(current==NULL){
                    parent->right=temp;
                    return;
                }
            }
            else
            {
                current=current->left;
                if(current==NULL)
                {
                    parent->left=temp;
                    return;
                }
            }
            
        }
}
@end
