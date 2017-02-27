//
//  binarySearchString.m
//  BinarySearch
//
//  Created by BridgeLabz Solutions LLP on 25/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "binarySearchString.h"
@implementation BinarySearch
+(int)binarySearchString:(NSMutableArray*)array secondnumber:(NSString*)key{
    int first = 0;
    int last  = (int)[array count];
    
    while (first < last) {
        int mid = (first + last) / 2;
        if ([key compare:array[mid]] < 0) {
            last = mid;
        } else if ([key compare:array[mid]] > 0) {
            first = mid + 1;
        } else {
            return mid;
        }
    }
    return -1;
}
@end
