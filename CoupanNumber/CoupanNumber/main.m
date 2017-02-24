/*
    main.m
    CoupanNum

    Created by SHAHEBAZ,At BridgeLabz Solutions LLP  on 2/8/17.
    Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
    
                        ----Problem Statment---
       8.Coupon Numbers
         
         Desc -> Given N distinct Coupon Numbers, how many random numbers do you need to generate distinct coupon number? This program simulates this random process.
             I/P -> N Distinct Coupon Number
             Logic -> repeatedly choose a random number and check whether it's a new one.
             O/P -> total random number needed to have all distinct numbers.
             Functions => Write Class Static Functions to generate random number and to process distinct coupons.

*/
#import <Foundation/Foundation.h>
#import "coupan.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CoupanNum *cn = [[CoupanNum alloc]init];
        [cn GetInput];
        [CoupanNum Generate];
    }
    return 0;
}
