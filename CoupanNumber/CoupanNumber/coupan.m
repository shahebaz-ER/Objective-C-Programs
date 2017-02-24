//
//  coupan.m
//  CoupanNum
//
//  Created by BridgeLabz Solutions LLP  on 2/8/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "coupan.h"
@implementation CoupanNum

static int no_of_coupan;
static int random1;
static int temp;

-(void)GetInput
{
    NSLog(@"Enter the number of coupan number you want=");
    scanf("%d",&no_of_coupan);
}
+(void)Generate{
    temp=no_of_coupan;
    for(int i=0;i<no_of_coupan;i++)
    {
        random1 = rand();
        NSLog(@"Random numbers are=%i",random1);
    }
    
}
@end
