//
//  main.m
//  firstProgram
//
//  Created by Shahebaz,at BridgeLabz Solutions LLP on 22/02/17.
//  Copyright © 2017 shahebaz BridgeLabz Solutions LLP. All rights reserved.


/*
                          : Problem Statement:
 
 1. User Input and Replace String Template “Hello <<UserName>>, How are you?”
 
        a. I/P​ -> Take User Name as Input. Ensure UserName has min 3 char
        b. Logic​ -> Replace <<UserName>> with the proper name
        c. O/P​ -> Print the String with User Name
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string = @"Hello <<UserName>>, how are you?";
        char userName[30];
        do
        {
            NSLog(@"Enter your name:");
            scanf("%s",userName);
            
            if(strlen(userName)<3)
                NSLog(@"Please enter atleast 3 character name=");
            else
            {
              //NSString Replace Method is used 
                NSString *uName = [NSString stringWithFormat:@"%s",userName];
                NSRange range = NSMakeRange(6, 12);
                NSString *string2 = [string stringByReplacingCharactersInRange:range
                                                                 withString:uName];
                NSLog(@"%@", string2);
                
            }
        }while (strlen(userName)<3);
    }
    return 0;
}
