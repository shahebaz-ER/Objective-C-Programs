/* 
   main.m
   Stopwatch
   Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 27/02/17.
   Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
    
    =============================Problem Statement==================================
 
     20. UnOrdered List
             a. Desc -> Read the Text from a file, split it into words and arrange it as Linked List.Take a user input to search a Word in the List. If the Word is not found then add it to the list, and if it found then remove the word from the List. In the end save the list into a file
             b. I/P -> Read from file the list of Words and take user input to search a Text
             c. Logic -> Create a Unordered Linked List. The Basic Building Block is the Node Object. Each node object must hold at least two pieces of information. One ref to the data field and second the ref to the next node object.
                d. O/P -> The List of Words to a File.
 */
#import <Foundation/Foundation.h>
#import "Node.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Node *node=[[Node alloc]init];
        NSMutableArray *readFile =[node readFromFile];
        int i;
        NSString *word;
        char str[20];
        for (i=0; i<[readFile count]-1; i++) {
            
         
            
            [node insert:[readFile objectAtIndex:i]];
        }
        [node print];
        do
        {
           printf("\nEnter word to search:\n");
           scanf("%s",str);
           word=[NSString stringWithFormat:@"%s",str];
           [node search:word];
           printf("\nList After Updation:\n");
           [node print];
            
        }while(![word isEqualToString:@"exit"]);
        NSArray *ar=@[@"shahebaz",@"shaikh"];
        bool var=[ar writeToFile:@"Users/bridgelabz/Documents/Objective_Basics/LinkedListWord/LinkedListWord/output" atomically:YES];
        if(var){
            NSLog(@"Succesfully writing done..");
        }
        else{
            NSLog(@"UnSuccesfull writing done..");

        }
       
    }
    return 0;
}
