/*  Palindrome.m
    Palindrome

    Created by BridgeLabz Solutions LLP on 17/12/16.
    Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.

 =============================Problem Statement============================
        24. Palindrome-Checker
 
            a. Desc -> A palindrome is a string that reads the same forward and backward, for example, radar, toot, and madam. We would like to construct an algorithm to input a string of characters and check whether it is a palindrome.
            b. I/P -> Take a String as an Input
            c. Logic -> The solution to this problem will use a deque to store the characters of the string. We will process the string from left to right and add each character to the rear of the deque.
            d. O/P -> True or False to Show if the String is Palindrome or not.
*/
#import <Foundation/Foundation.h>
#import "Palindrome.h"
#import <string.h>
@implementation Palindrome

-(void)getString:(char [])string1{
    int i,j=0;
    len=(int)strlen(string1);
    for(i=len-1;i>=0;i--)
    {
        string2[j]=string1[i];
        j++;
    }
       
    
}
-(void)result:(char[])string3
{
    
        if(strcmp(string2,string3)==0)
        {
            printf("\n Given String is Palindrome.\n");
        }
        else
        {
            printf("\n Given String is 'NOT' Palindrome. \n");
        }
    
}

@end
