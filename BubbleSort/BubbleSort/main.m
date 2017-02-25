/*
    main.m
    BubbleSort

    Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 25/02/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
 
 
                        ----Problem Statement-----
            18. Bubble Sort
 
                a. Desc -> Reads in integers prints them in sorted order using Bubble Sort
                b. I/P -> read in the list ints
                c. O/P -> Print the Sorted List
*/

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i,j,N,temp;
        NSLog(@"Enter the totall no. of element you want to sort=");
        scanf("%i",&N);
        int array[N];
        for(i=0;i<N;i++)
        {scanf("%i",&array[i]);}
        for(i=0;i<N;i++)         //sorting the array
        {
            for(j=i+1;j<N;j++)
            {
                if(array[i]>array[j])
                {
                    temp=array[i];
                    array[i]=array[j];
                    array[j]=temp;
                }
            }
        }
        NSLog(@"The sorted order is:");
        
        for(i=0;i<N;i++)
        {
            if(!(array[i]==0))
                NSLog(@"%i",array[i]);		//printing the sorted array
        }
        
    }
    return 0;
}
