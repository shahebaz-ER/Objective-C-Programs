/*
    main.m
    BalancedPranthesis

    Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 01/03/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.

    ============================Problem Statements===================================
 
        22. Simple Balanced Parentheses
 
                a. Desc -> Take an Arithmetic Expression such as (5+6)∗(7+8)/(4+3)(5+6)∗(7+8)/(4+3) where parentheses are used to order the performance of operations. Ensure parentheses must appear in a balanced fashion.
                b. I/P -> read in Arithmetic Expression such as (5+6)∗(7+8)/(4+3)(5+6)∗(7+8)/(4+3)
                c. Logic -> Write a Stack Class to push open parenthesis “(“ and pop closed parenthesis “)”. At the End of the Expression if the Stack is Empty then the
 */
#import <Foundation/Foundation.h>
#import "BalancedPranthesis.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int flag=0;
        NSMutableArray *stack=[[NSMutableArray alloc]init];
        NSString *string=@"(5+6)∗(7+8)/(4+3)(5+6)∗(7+8)/(4+3)";
        NSMutableArray *array=[[NSMutableArray alloc]init];
        
            for (int i=0; i < string.length; i++) {
            NSString *temp_str=[string substringWithRange:NSMakeRange(i, 1)];
                [array addObject:temp_str];
                           }
         Stack *exp=[[Stack alloc]init];
         for(int i=0;i<[array count];i++)
          {
            if([array[i] isEqualToString: @"("])
                
               [exp push:stack element :(NSString*)array[i]];
              
             if([array[i] isEqualToString: @")"])
             {{if([stack count]==0)
                 flag=1;}
                 [exp pop:stack];}
           
          }
        if([stack count]==0 && flag==0)
         NSLog(@"Given Expresion is Balanced...");
        else
         NSLog(@"Given Expresion is not Balanced..");
        
        }
    return 0;
}

