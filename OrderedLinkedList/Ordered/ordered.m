//
//  ordered.m
//  Ordered
//
//  Created by BridgeLabz Solutions LLP  on 2/14/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ordered.h"
int num;
@implementation OrderedList

//Read the Number from a file
-(void)readNumber
{
    NSString *file= @"/Users/bridgelabz/Desktop/Shabby/OrderedLinkedList/Ordered/File";
    NSError *error;
    NSString *content=[NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
    linklist=(NSMutableArray*)[content componentsSeparatedByString:@"\n"];
    [linklist removeLastObject];
}

//Arrange it in ascending order using linkedList
-(void)arrange
{
    [linklist sortUsingSelector:@selector(compare:)];
    
    printf("-----------After Sorting Elements--------------------\n");
    [self Display];
    printf("-----------------------------------------------------\n");
}

//Take user input for a number
-(void)getInput
{
    printf("Enter any number you want to add or remove from list=");
    scanf("%d",&num);
    
    printf("-----------------------------------------------------\n");
    [self addremove];
    printf("-----------------------------------------------------\n");

}

//if found then pop the number out of the list else insert the number in appropriate position
-(void)addremove
{
    NSString *number=[[NSString alloc]initWithFormat:@"%d",num];
    
        if([linklist containsObject:number])
        [linklist removeObject:number];
        else
        {
            [linklist addObject:number];
            [linklist sortUsingSelector:@selector(compare:)];
        }
        [self Display];
        
}
//Display
-(void)Display
{
    for(int i=0;i<[linklist count];i++)
    NSLog(@"%@",[linklist objectAtIndex:i]);
}
@end
