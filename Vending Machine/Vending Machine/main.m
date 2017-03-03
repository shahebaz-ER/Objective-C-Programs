 /*
    main.m
    Vending Machine

    Created by BridgeLabz Solutions LLP on 03/03/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.

  
    ===========================Problem Statement==================
    25. Find the Fewest Notes to be returned for Vending Machine
  
            a. Desc -> There is 1, 2, 5, 10, 50, 100, 500 and 1000 Rs Notes which can be
               returned by Vending Machine. Write a Program to calculate the minimum number of Notes as well as the Notes to be returned by the Vending Machine as a Change
            b. I/P -> read the Change in Rs to be returned by the Vending Machine
            c. Logic -> Use Recursion and check for largest value of the Note to return change to get to minimum number of Notes.
            d. O/P -> Two Outputs - one the number of minimum Note needed to give the
                change and second list of Rs Notes that would given in the Change
*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i,amount,temp;
        int array[]={1000,500,100,50,20,10,5,2,1};
        NSLog(@"Enter the amount=");
        scanf("%i",&amount);
        for(i=0;i<9;i++)
            {
                temp=amount/array[i];
                amount=amount-(temp*array[i]);
                if(temp!=0)
                NSLog(@"%i Notes of %i",temp,array[i]);
                if(amount==0)
                    break;
                
            }
        
    }
    return 0;
}
