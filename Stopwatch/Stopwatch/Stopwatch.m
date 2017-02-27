//
//  Stopwatch.m
//  Stopwatch
//
//  Created by BridgeLabz Solutions LLP on 27/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stopwatch.h"

@implementation StopWatch

double starttime;
double stoptime;
double elapsetime;
bool running=false;

//start the stopwatch
-(void)starttime
{
    NSTimeInterval timeinsec=[[NSDate date] timeIntervalSince1970];
    starttime=timeinsec;
    running=true;
}

//stop the stopwatch
-(void)stoptime
{
    NSTimeInterval timeinsec2=[[NSDate date] timeIntervalSince1970];
    stoptime=timeinsec2;
    running=false;
}

//Measure the elapsed time between start and end
-(void)calculatetime
{
    if(running==false)
    {
        elapsetime=stoptime-starttime;
        int sec=elapsetime;
        if(sec<=60)
        {
            printf("\nTime Elapsed: %d second..\n",sec);
        }
        else if (sec>60)
        {
            int min=(sec/60);
            int a=min*60;
            int b=sec-a;
            printf("\nTime Elapsed: %d minute and %d second..\n",min,b);
        }
    }
}

@end
