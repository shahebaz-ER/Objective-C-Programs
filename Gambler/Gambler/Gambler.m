//
//  Gambler.m
//  Gambler
//
//  Created by BridgeLabz Solutions LLP on 22/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gambler.h"
@implementation Gambler
-(float)randomNumerGenrater{
    
    float low_bound = 0.0;
    float high_bound = 1.0;
    float rndValue = (((float)arc4random()/0x100000000)*(high_bound-low_bound)+low_bound);
    return rndValue;
}


@end
