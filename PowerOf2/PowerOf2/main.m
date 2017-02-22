//
//  main.m
//  PowerOf2
//
//  Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 22/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
 /*
                    ----Problem Statement----
       4. Power of 2
  
            a. Desc -> This program takes a command-line argument N and prints a table of the powers of 2 that are less than or equal to 2^N.
            b. I/P -> The Power Value N. Only works if 0 <= N < 31 since 2^31 overflows an int
            c. Logic -> repeat until i equals N.
            d. O/P -> Print the year is a Leap Year or not.
  */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        int i,value,n;
        NSLog(@"Enter the Number=");
        scanf("%d",&n);
        
          for(i=0;i<=n;i++)
        {
            if(i<0||i==31 )
                break;
            value=(int)pow(2,i);
            NSLog(@"2 to the power of %i = %i",i,value);
            
        
        }
    }
    return 0;
}



