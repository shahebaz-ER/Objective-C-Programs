//
//  Inventry.h
//  Inventry Managment
//
//  Created by BridgeLabz Solutions LLP on 03/03/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//
#import <Foundation/Foundation.h>
#ifndef Inventry_h
#define Inventry_h
#endif /* Inventry_h */

@interface Inventry: NSObject
{
    NSDictionary *someDictionary;
    NSArray *rice;
    NSArray *pulse;
    NSArray *wheat;
    NSDictionary *outputRice;
    NSDictionary *outputPulse;
    NSDictionary *outputWheat;
    NSArray *writeArray;
}
-(void)getData;
-(int)calculateRice;
-(int)calculatePulse;
-(int)calculateWheat;
-(void)writeToJson;
@end
