//
//  Regular.h
//  Regularexp
//
//  Created by BridgeLabz Solutions LLP on 03/03/17.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//
#import<Foundation/Foundation.h>

@interface DataRead : NSObject
{
    NSString *message;
    NSString *datepattern;
    NSString *currentdate;
    
}		
-(void)setData:(NSString*)string;
-(void)dateDetect;
-(void)display:(NSString*)name andfullname:(NSString *)fname andmob:(NSString*)mob;
@end
