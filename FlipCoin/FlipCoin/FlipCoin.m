//
//  FlipCoin.m
//  FlipCoin
//
//  Created by BridgeLabz Solutions LLP on 22/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlipCoin.h"
@implementation FlipCoin
-(float)randomNumerGenrater{
    
    float low_bound = 0.0;
    float high_bound = 1.0;
    float rndValue = (((float)arc4random()/0x100000000)*(high_bound-low_bound)+low_bound);
    return rndValue;
}
-(float)randomNumerGenrater1{
    float min=0.0,max=1.0;
    float random = (min + (float)arc4random_uniform(max - min + 1));
    return random;
}

@end
