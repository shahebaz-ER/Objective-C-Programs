/*
 BST2.m
 BST
 
 Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 03/03/17.
 Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
 
 
 =============================Problem Statement======================
 31. Number of Binary Search Tree
 
 */
#import <Foundation/Foundation.h>

#import "BST2.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Binary *btree=[[Binary alloc]init];
        struct Node *get,*tree;
        int ch,number,chd;
        do{
        printf("\n-------Welcome to BST-------");
        printf("\n1)Insert data\n2)Search\n3)Delete\n4)Display\n5)Exit\nEnter Choice:\n");
        scanf("%d",&ch);
        switch (ch) {
            case 1:
                    printf("\nEnter number to Insert:\n");
                    scanf("%d",&number);
                    [btree Insert:number];
                    printf("\nSuccesfully inserted..");
                    break;
            case 2:
                    printf("\nEnter number to Search:\n");
                    scanf("%d",&number);
                    get=[btree Search:number];
                    if (get!=NULL)
                    {
                        printf("\nNumber %d is found",get->data);
                    }
                    else
                    {
                    printf("\nNumber not found");
                    }
                    break;
            case 3:
                    printf("\nEnter number to delete:\n");
                    scanf("%d",&number);
                    [btree delete1:number];
                    printf("\nSuccesfully deleted..");
                    break;
            case 4:
                tree=[btree getTree];
                printf("\n---------------------");
                do{
                printf("\n1)Pre-Order\n2)In-Order\n3)Post-Order\n4)Back\nEnter Choice:\n");
                scanf("%d",&chd);
                    switch (chd)
                    {
                        case 1:
                                printf("\nPre-Order:\n");
                                [btree preOrder:tree];
                                break;
                        case 2:
                                printf("\nIn-Order:\n");
                                [btree inOrder:tree];
                                break;
                        case 3:
                                printf("\nPost-Order:\n");
                                [btree postOrder:tree];
                                break;
                        
                        default:
                            printf("\nWrong Choice !..");
                            break;
                    }
                }while(chd!=4);
                
                    break;
                
            default:
                    printf("\nWrong Choice !..Please try again..");
                    break;
        }
        }while(ch!=5);
        
    }
    return 0;
}
