//
//  Queue.m
//  Banking Cash counter
//
//  Created by BridgeLabz Solutions LLP on 02/03/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Queue.h"
@interface Queue()
@property (strong) NSMutableArray *data;
@end
@implementation Queue
-(instancetype)init{
    if (self = [super init]){
        _data = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)enqueue:(id)anObject{
    NSLog(@"before adding element size of queue is %i",(int)[self.data count]);
    [self.data addObject:anObject];
    NSLog(@"after adding element size of queue is %i",(int)[self.data count]);
}

-(id)dequeue{
    NSLog(@"before romoving element size of queue is %i",(int)[self.data count]);
    id headObject = [self.data objectAtIndex:0];
    if (headObject != nil) {
        [self.data removeObjectAtIndex:0];
    }
    NSLog(@" after removing element size of queue is %i",(int)[self.data count]);
    return headObject;
}
@end
@implementation Acc_Holder



-(void) getInfo{
    NSLog(@"Enter your name=");
    scanf("%s",name);
    Name=[NSString stringWithFormat:@"%s",name];
    NSLog(@"Enter your account Number=");
    scanf("%i",&acc_Num);
    NSLog(@"Enter your account balance=");
    scanf("%i",&acc_bal);
    
   }
-(void)display{
    NSLog(@"Account Holder Name=%@",Name);
    NSLog(@"Account Number=%i",acc_Num);
    NSLog(@"Account Balance=%i",acc_bal);
}
-(void)withdrawal:(int) amount
    {
        if(acc_bal>amount)
        {
            acc_bal=acc_bal-amount;
            NSLog(@"Your current Balance is %i=",acc_bal);
        }
        else
            NSLog(@"Insufficaint Balance..");
    }
    
-(void)deposite:(int)amount
{
    acc_bal=acc_bal+amount;
    NSLog(@"Your current Balance is %i=",acc_bal);
}
-(int) action :(Acc_Holder*)acc_Holdr1 {
    int choice,amount;
    
    while(true)
    {
        NSLog(@"\n\n\n*****************************************");
        NSLog(@"\n PLease Enter Your Choice \n 1.Withdrawal_Money \n 2.Deposite_Money \n 3.Exit");
        scanf("%i",&choice);
    switch (choice) {
        case 1:
            NSLog(@"Please Enter the amount for withdraw=" );
            scanf("%d",&amount);
            [self withdrawal:amount];
            break;
        case 2:
            NSLog(@"Please Enter the amount deposite=" );
            scanf("%d",&amount);
            [self deposite:amount];
            break;
            
        default:
                NSLog(@"%i",acc_bal);
                return 1;
            
    }
    }
    return 0;
}
@end
