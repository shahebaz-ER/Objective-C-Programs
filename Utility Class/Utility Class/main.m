/*
    main.m
    Utility Class

    Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 25/02/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
                
                    -------Problem Statement-----
        a. Desc -> Create Utility Class having following methods
            i.  binarySearch method for integer
            ii. binarySearch method for String
            iii.insertionSort method for integer
            iv. insertionSort method for String     
            v.  bubbleSort method for integer
            vi. bubbleSort method for String
        b. I/P -> Write main function to call the utility function
        c. Logic -> Check using Stopwatch the Elapsed Time for every method call
        d. O/P -> Output the Search and Sorted List. More importantly print elapsed time
                performance in descending order.
 */

#import <Foundation/Foundation.h>
#import "UtilityClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        int t=0,timeArray[100];
            Utility *u=[[Utility alloc]init];
        int choice;
        do
        {
            NSLog(@"--------Menu for Searching and Sorting----------");
            NSLog(@"1. BinarySearch  for Integer");
            NSLog(@"2. BinarySearch  for String");
            NSLog(@"3. InsertionSort  for Integer");
            NSLog(@"4. InsertionSort  for String");
            NSLog(@"5. BubbleSort for Integer");
            NSLog(@"6. BubbleSort for String");
            NSLog(@"7. Exit");
            NSLog(@"Enter Your Choice:");
            
            scanf("%i",&choice);
            
            
            switch (choice)
            { 
                case 1:
                    [u starttime];
                    [u callBinarySearchInt];
                    [u stoptime];
                    timeArray[t]=[u calculatetime];
                    t++;
                    break;
                case 2:
                    [u starttime];
                    [u callBinarySearchString];
                    timeArray[t]=[u calculatetime];
                    t++;
                    break;
                case 3:
                    [u starttime];
                    [u insertionSortForInteger];
                    timeArray[t]=[u calculatetime];
                    t++;
                    break;
                case 4:
                    [u starttime];
                    [u insertionSortForString];
                    timeArray[t]=[u calculatetime];
                    t++;
                    break;
                case 5:
                    [u starttime];
                    [u bubbleSortInteger];
                    timeArray[t]=[u calculatetime];
                    t++;
                    break;
                case 6:
                    [u starttime];
                    [u bubbleSortString];
                    timeArray[t]=[u calculatetime];
                    t++;
                    break;
                default:
                    [u descendingOrderSorting:timeArray tValue:t];
                    exit(0);
                    break;
            }
        }while (true);
    
        
    }
     return 0;
}
