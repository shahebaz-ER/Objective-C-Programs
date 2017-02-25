/*
    main.m
    InsertionSortString

    Created by BridgeLabz Solutions LLP on 25/02/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.

                        ----PROBLEM STATEMENT---
        17. Insertion Sort
 
            a. Desc -> Reads in strings from standard input and prints them in sorted order.
               Uses insertion sort.
            b. I/P -> read in the list words
            c. Logic -> Use Insertion Sort to sort the words in the String array
            d. O/P -> Print the Sorted List
*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i, j, N;
        char words[20];
        NSString *temp=[[NSString alloc]init];
        NSLog(@"Enter the totall no of Element you want Insert=");
        scanf("%i",&N);
        NSMutableArray *array = [[NSMutableArray alloc]init];
        NSLog(@"Enter the  %i  Elements=",N);
        
        for (i = 0; i < N; i++) {
            scanf("%s",words);
            NSString *name=[NSString stringWithFormat:@"%s",words];
            array[i]=name;
            }
        
        for (i = 1; i < N; i++) {
            temp = array[i];
            for (j = i - 1; j >= 0 && [temp caseInsensitiveCompare:array[j]] < 0; j--) {
                array[j + 1] = array[j];
            }
            array[j + 1] = temp;
        }
        NSLog(@"Sorted Elements are:");
        NSLog(@"%@",array);
    }
    return 0;
}
