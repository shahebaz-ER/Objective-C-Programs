//
//  Node.m
//  LinkedList2
//
//  Created by BridgeLabz Solutions LLP on 20/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"


@implementation Node

@synthesize currentValue=_currentVal;
@synthesize next=_next;
-(id)init{
    self=[super init];
    if(self){
        
        _currentVal=NULL;
        _next=NULL;
    }
    return self;
}
-(void)insert:(NSString*)insertval{
    Node *nextnode=self.next;
    Node *newnode;
    if(self.currentValue==0){
        self.currentValue=insertval;
        return;
    }
    //-----------------
    if(nextnode==NULL)
    {
        newnode=[[Node alloc]init];
        if(newnode)
        {
            newnode.currentValue=insertval;
            newnode.next=nextnode;
            self.next=newnode;
        }
        return;
    }
    else
    {
        if (insertval>self.currentValue && insertval<nextnode.currentValue)
        {
            newnode=[[Node alloc]init];
            if(newnode)
            {
                newnode.currentValue=insertval;
                newnode.next=nextnode;
                self.next=newnode;
            }
            return;
        }
        else
        {
            [nextnode insert:insertval];
        }
        
    }
    
}

-(void)print
{
    Node *nextnode=self.next;
    
    
    NSLog(@"%@",self.currentValue);
    if(nextnode)
    {
        [nextnode print];
    }
    
}

-(void)search:(NSString*)number
{
    Node *head=self;
    if (head.currentValue==number) {
        printf("Node is found");
        head=self.next;
    }
    if(head.currentValue!=0)
    {
        Node *newnode=head;
        Node *prevnode=[[Node alloc]init];
        while (newnode.currentValue!=number && newnode.next!=NULL) {
            prevnode=newnode;
            newnode=newnode.next;
        }
        // Logic for remove ...
        if(newnode.currentValue==number)
        {
            if(newnode.next!=NULL){
                prevnode.next=newnode.next;
                
            }
            else{
                prevnode.next=NULL;
            }
            printf("\nNode is found so it deleted....");
        }
        //Logic for insert when it is new
        else{
            printf("\nNode is not found so it is inserted....");
            [self insert:number];
        }
        
    }
    
}
-(NSMutableArray*)readFromFile
{
    
    NSString *file= @"/Users/bridgelabz/Documents/Objective_Basics/LinkedListWord/LinkedListWord/input";
    
    
    NSError *error;
    NSString *content =[NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
    linkList=(NSMutableArray*)[content componentsSeparatedByString:@"\n" ];
    return linkList;
    
}
@end
