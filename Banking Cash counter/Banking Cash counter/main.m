/*
    main.m
    Banking Cash counter

    Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 02/03/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.

 =====================================Problem Statements=======================
 
        23. Simulate Banking Cash Counter
            a. Desc -> Create a Program which creates Banking Cash Counter where people
                come in to deposit Cash and withdraw Cash. Have an input panel to add people
                to Queue to either deposit or withdraw money and dequeue the people. Maintain the Cash Balance.
            b. I/P -> Panel to add People to Queue to Deposit or Withdraw Money and dequeue
            c. Logic -> Write a Queue Class to enqueue and dequeue people to either deposit or withdraw money and maintain the cash balance
            d. O/P -> True or False to Show Arithmetic Expression is balanced or not.
 */
#import <Foundation/Foundation.h>
#import "Queue.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        Queue *queue=[[Queue alloc]init];
        Acc_Holder *acc_Holdr1 = [[Acc_Holder alloc] init];
        Acc_Holder *acc_Holdr2 = [[Acc_Holder alloc] init];
        Acc_Holder *acc_Holdr3 = [[Acc_Holder alloc] init];
        [acc_Holdr1 getInfo];
        [acc_Holdr2 getInfo];
        [acc_Holdr3 getInfo];
        [acc_Holdr1 display];
        [acc_Holdr2 display];
        [acc_Holdr3 display];
        [queue enqueue:acc_Holdr1];
        [queue enqueue:acc_Holdr2];
        [queue enqueue:acc_Holdr3];
       
        
        NSLog(@"******************Queue*******************");
        NSLog(@"  1    2     3                     ");
        NSLog(@"******************Queue*******************");

        [acc_Holdr1 action:acc_Holdr1];
        [queue dequeue];
        NSLog(@"******************Queue*******************");
        NSLog(@"  2     3                     ");
        NSLog(@"******************Queue*******************");
        [acc_Holdr2 action:acc_Holdr3];
        [queue dequeue];
        NSLog(@"******************Queue*******************");
        NSLog(@"  3                     ");
        NSLog(@"******************Queue*******************");
        [acc_Holdr3 action:acc_Holdr2];
        [queue dequeue];
        NSLog(@"No of Person in Queue 0 \n***********Queue is Empty**************");
        NSLog(@"******************Queue*******************");
        NSLog(@"   Empty                    ");
        NSLog(@"******************Queue*******************");

        
        
       
               
    }
    return 0;
}
