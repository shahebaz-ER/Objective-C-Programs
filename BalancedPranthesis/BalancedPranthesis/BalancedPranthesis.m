//
//  BalancedPranthesis.m
//  BalancedPranthesis
//
//  Created by BridgeLabz Solutions LLP on 01/03/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BalancedPranthesis.h"
@implementation Stack

-(void)push :stack element:(NSString*) element{
    
     [stack addObject:element];
    
}
-(void)pop :stack{
   
    [stack removeLastObject];
    
}

@end
