//
//  Factor.m
//  Factor
//
//  Created by BridgeLabz Solutions LLP on 22/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factor.h"

@implementation Factor
-(bool) isPrime:(int) num
{	int flag=0,i;
    for(i=2;i<=num;i++)
    {
        if(num%i==0)
            flag++;
    }
    if(flag==1)
        return true;
    else
        return false;
}
-(bool)  factPrime:(int) num1:(int) num2
{
    if(num1%num2==0)
        return true;
    else
        return false;
}
@end
