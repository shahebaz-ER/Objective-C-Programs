//
//  main.m
//  FlipCoin
//
//  Created by Shahebaz,at BridgeLabz Solutions LLP on 22/02/17.
//  Copyright © 2017 Shahebaz,BridgeLabz Solutions LLP. All rights reserved.
/*
                            : Problem Statement :
 
   
    2. Flip Coin and print percentage of Heads and Tails
 
        a. I/P -> The number of times to Flip Coin. Ensure it is positive integer.
        b. Logic -> Use Random Function to get value between 0 and 1. If < 0.5 then tails or heads
        c. O/P -> Percentage of Head vs Tails
 */


#import <Foundation/Foundation.h>
#import "FlipCoin.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Welcome to FlipCoin Program!!!");
        FlipCoin *flip=[[FlipCoin alloc]init];
        
        [flip randomNumerGenrater1];
        int numflip,i,tail=0,head=0;
        
        
        float value;//=[flip randomNumerGenrater];
            //NSLog(@"vlue of random no is %f",value);
        
            scanf("%i",&numflip);
        while(numflip<1)
        {
            NSLog(@"please enter a positive =");
            scanf("%i",&numflip);
        }
        for(i=1;i<=numflip;i++)
        {
            if((value=[flip randomNumerGenrater])<0.5)
            {
                NSLog(@"flip no=%i     result is = tails",i);
                tail++;
            }
            else
            {
                NSLog(@"flip no=%i    result is =Heads",i);
                head++;
            }
        }
        int per=(int)(((double)head/numflip)*100);
        int per1=(int)(((double)tail/numflip)*100);
        int per2=(int)(((double)head/numflip)*100);
        NSLog(@"totall num of flips=%i \n percentage of Heads =%i \n percentage of tails=%i",numflip,per,per1);
        NSLog(@"\n so, The percentage og head vs Tails is %i",per2);
    }
    return 0;
    }
