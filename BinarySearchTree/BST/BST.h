#import <Foundation/Foundation.h>


struct Node{
    int data;
    struct Node *left;
    struct Node *right;
};
@interface BST : NSObject

-(struct Node *)Search:(int)data;
-(void)Insert:(int)data;
@end
