//
//  QuestionToAnswer.m
//  QuestionToAnswer
//
//  Created by BridgeLabz Solutions LLP on 24/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionToAnswer.h"

@implementation QuestionToAnswer
-(void) binarySearch1{
     int range,count,lower,upper,middle,n;
     char userName[20];
     NSLog(@"Enter any Number");
    scanf("%i",&n);
    range=(int)(pow(2,n-1));
    NSLog(@"Take number between '0' to %i",range);
    count=0;
    lower=0;
    upper=range;
    middle=(lower+upper/2);
    NSLog(@"Is your number:%i",middle);
    
    NSLog(@"Enter your answer in 'yes' or 'high' or 'low'");
    scanf("%s",userName);
    NSString *input = [NSString stringWithFormat:@"%s",userName];
    
    do
    {
        if ([input isEqualToString:@"high"])
        {
            lower= middle;
            count++;
        }
        else if ([input isEqualToString:@"yes"])
        {
            NSLog(@"The number you thought was: %i",middle);
            int no=count+1;
            NSLog(@"It takes +%i times to find your exact number",no);
            break;
        }
        else if([input isEqualToString:@"low"])
        {
            upper=middle;
            count++;
        }
        if(count<n)
        {
            middle=(lower+ upper+1)/2;
            NSLog(@"Is your number %i : ",middle);
            scanf("%s",userName);
            input  = [NSString stringWithFormat:@"%s",userName];
        }
    }
    while(lower<=upper);
    if (count>n)
    {
        NSLog(@"Number not found");
    }
    else
    {
        exit(0);
    }
}
@end
