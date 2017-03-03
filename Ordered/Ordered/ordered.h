//
//  ordered.h
//  Ordered
//
//  Created by BridgeLabz Solutions LLP  on 2/14/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#ifndef ordered_h
#define ordered_h

#endif /* ordered_h */

@interface OrderedList : NSObject
{
    NSString *list;
    NSMutableArray *linklist;
    int num;
}

-(void)readNumber;
-(void)arrange;
-(void)Display;
-(void)getInput;
-(void)addremove;


@end
