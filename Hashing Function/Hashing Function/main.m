/*
    main.m
    Hashing Function

    Created by BridgeLabz SHAHEBAZ,AT Solutions LLP on 03/03/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
 
 
 =============================Problem Statement=========================
 
 
        26. Hashing Function to search a Number in a slot
 
            a. Desc -> Create a Slot of 10 to store Chain of Numbers that belong to each Slot to efficiently search a number from a given set of number
            b. I/P -> read a set of numbers from a file and take user input to search a number
            c. Logic -> Firstly store the numbers in the Slot. Since there are 10 Numbers divide  each number by 11 and the reminder put in the appropriate slot. Create a Chain  for each Slot to avoid Collision. If a number searched is found then pop it or else  push it. Use Map of Slot Numbers and Ordered LinkedList to solve the problem.  In the Figure Below, you can see number 77/11 reminder is 0 hence sits in the 0  slot while 26/11 remainder is 4 hence sits in slot 4
            d. O/P -> Save the numbers in a file
*/

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i,position,inputArray[10]={30,23,26,31,22,24,28,27,25,29};
        int hashingArray[10];
        NSLog(@"Here is the updated slot after changing the position \n");
        for (i=0; i<10; i++)
        {
            position=inputArray[i]%11;
            hashingArray[position]=inputArray[i];
            
        }
        for (i=0; i<10; i++)
        NSLog(@"index no---->%i At %i ",i,hashingArray[i]);
        
        }
    return 0;
}
