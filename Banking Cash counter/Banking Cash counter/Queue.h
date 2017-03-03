//
//  Queue.h
//  Banking Cash counter
//
//  Created by BridgeLabz Solutions LLP on 02/03/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#ifndef Queue_h
#define Queue_h
#import <Foundation/Foundation.h>

#endif /* Queue_h */
@interface Queue:NSObject
-(void)enqueue:(id)anObject;
-(id ) dequeue;
@end
@interface Acc_Holder : NSObject
{
    int acc_bal,acc_Num;
    char name[20];
    NSString *Name;
}

-(void)getInfo;
-(void)display;
-(void)withdrawal:(int) amount;
-(void)deposite:(int)amount;
-(int) action :(Acc_Holder*)acc_Holdr1;
@end

