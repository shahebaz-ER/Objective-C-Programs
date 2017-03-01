/*
    main.m
    Ordered

    Created by SHAHEBAZ,At BridgeLabz Solutions LLP  on 2/14/17.
    Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

     ================================Problem Statement================
 
        21. Ordered List
 
            a. Desc -> Read .a List of Numbers from a file and arrange it ascending Order in a Linked List. Take user input for a number, if found then pop the number out of the list else insert the number in appropriate position
            b. I/P -> Read from file the list of Numbers and take user input for a new number
            c. Logic -> Create a Ordered Linked List having Numbers in ascending order.
            d. O/P -> The List of Numbers to a File.
*/
#import <Foundation/Foundation.h>
#import "ordered.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        OrderedList *or = [[OrderedList alloc]init];
        [or readNumber];
        [or Display];
        [or arrange];
        [or getInput];
     
        
    }
    return 0;
}
