/*
    main.m
    BinarySearch

    Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 25/02/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
 
 
                           ------Problem Statment-----
        16. Binary Search the Word from Word List
 
            a. Desc -> Read in a list of words from File. Then prompt the user to enter a word to
               search the list. The program reports if the search word is found in the list.
            b. I/P -> read in the list words comma separated from a File and then enter the word
               to be searched
            c. Logic -> Use Arrays to sort the word list and then do the binary search
            d. O/P -> Print the result if the word is found or not

*/
#import <Foundation/Foundation.h>
#import "binarySearchString.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char KeyName[20];
        NSMutableArray *array=[[NSMutableArray alloc]init];
        NSString *file= @"/Users/bridgelabz/Desktop/Shabby/BinarySearch/BinarySearch/File2";
        NSError *error;
        NSString *content=[NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
        array=(NSMutableArray*)[content componentsSeparatedByString:@"\n"];
        [array sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        NSLog(@"The Sorted Order is: ");
        NSLog(@"%@",array);
        NSLog(@"Enter Key: ");
        scanf("%s",KeyName);
        NSString *Key=[NSString stringWithFormat:@"%s",KeyName];
        
        int p=[BinarySearch binarySearchString:array secondnumber:Key];
        
        if(p==-1)
        {
            
            NSLog(@"Not Found");
        }
        else
        {
            
            NSLog(@"Found at %i position",p);
        }	        


    }
    return 0;
}
