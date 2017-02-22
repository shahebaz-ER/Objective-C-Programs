//
//  main.m
//  LeapYear
//
//  Created by shahebaz,at BridgeLabz Solutions LLP on 22/02/17.
//  Copyright © 2017  BridgeLabz Solutions LLP. All rights reserved.
/*
         
                    ---Problem Staements---
   3. Leap Year
 
         a. I/P -> Year, ensure it is a 4 digit number.
         b. Logic -> Determine if it is a Leap Year.
         c. O/P -> Print the year is a Leap Year or not.
 
 */

#import <Foundation/Foundation.h>
#import "LeapYear.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int  search;
        NSLog(@"Hello, World!");
        NSLog(@"Enter the Year=");
        scanf("%i",&search);
        while(search<=1752 || search>=9999)
           {
            NSLog(@"please Enter the valid year=");
            scanf("%i",&search);
           }
        
            LeapYear *lp= [[LeapYear alloc]init];   //object creation
            [lp isLeapYear :search ];               //method calling
       }
    return 0;
}
