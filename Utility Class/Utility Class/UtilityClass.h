//
//  UtilityClass.h
//  Utility Class
//
//  Created by BridgeLabz Solutions LLP on 25/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#ifndef UtilityClass_h
#define UtilityClass_h


#endif /* UtilityClass_h */
@interface Utility:NSObject
-(void) insertionSortForInteger;
-(int) binarySearchInt;
-(void) callBinarySearchInt;
-(int)binarySearchString:(NSMutableArray*)array arrayname:(NSString*)key;
-(int)callBinarySearchString;
-(void) insertionSortForString;
-(void) bubbleSortInteger;
-(void) bubbleSortString;
-(void)starttime;
-(void)stoptime;
-(int)calculatetime;
-(void) descendingOrderSorting:(int [])array tValue:(int)N;

@end
