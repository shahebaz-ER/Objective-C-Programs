/*
    main.m
    TwoDimensionalArray

    Created by BridgeLabz Solutions LLP  on 2/8/17.
    Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

                    ----Problem Statment----
    9. 2D Array
 
         a. Desc -> A library for reading in 2D arrays of integers, doubles, or booleans from  standard input and printing them out to standard output.
         b. I/P -> M rows, N Cols, and M * N inputs for 2D Array. Use Java Scanner Class
         c. Logic -> create 2 dimensional array in memory to read in M rows and N cols
         d. O/P -> Print function to print 2 Dimensional Array. In Java use PrintWriter with OutputStreamWriter to print the output to the screen.
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int row;
        int col;
        int input;
        NSLog(@"\nEnter no of rows:");
        scanf("%d",&row);
        NSLog(@"\nEnter no of columns:");
        scanf("%d",&col);
        int array[row][col];
        
        
        NSLog(@"\nEnter Elements=");
        for(int i=0;i<row;i++)
        {
            for(int j=0;j<col;j++)
            {
                scanf("%d",&input);
                array[i][j] = input;
            }
        }
        
        for(int i=0;i<row;i++)
        {
            for(int j=0;j<col;j++)
            {
                printf("| %d |",array[i][j]);
                printf("\t");
            }
            printf("\n");
        }
        
    }
    return 0;
}
