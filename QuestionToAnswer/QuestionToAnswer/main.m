/*
    main.m
    QuestionToAnswer

   Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 24/02/17.
   Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.

                ---Problem Statment---
    15. Question to find your number
 
         a. Desc -> takes a command-line argument N, asks you to think of a number between 0 and N-1, where N = 2^n, and always guesses the answer with n questions.
         b. I/P -> the Number N and then recursively ask true/false if the number is between
         a high and low value
         c. Logic -> Use Binary Search to find the number
         d. O/P -> Print the intermediary number and the final answer
 
 */

#import <Foundation/Foundation.h>
#import "QuestionToAnswer.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        QuestionToAnswer *Q=[[QuestionToAnswer alloc]init];
        [Q binarySearch1];
    }
    return 0;
}
