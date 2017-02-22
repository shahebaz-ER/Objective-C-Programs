//
//  LeapYear.m
//  LeapYear
//
//  Created by BridgeLabz Solutions LLP on 22/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeapYear.h"
@implementation LeapYear
-(void) isLeapYear:(int) search
{
    int value=1752-search;
    if(value%4==0)
        NSLog(@"%i is a Leap Year.",search);
    else
        NSLog(@"%i is not a Leap Year.",search);
}
@end
