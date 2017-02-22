/*
    main.m
    HarmonicNumber

    Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 22/02/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.

 
                    ----Problem Statement----
 
     5. Harmonic Number
 
            a. Desc -> Prints the Nth harmonic number: 1/1 + 1/2 + ... + 1/N
            b. I/P -> The Harmonic Value N. Ensure N != 0
            c. Logic -> compute 1/1 + 1/2 + 1/3 + ... + 1/N
            d. O/P -> Print the Nth Harmonic Value.
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int i,value;
        double sum=0.0;
        NSLog(@"Enter the Nth Harmonic value=");
        scanf("%i",&value);
        while(value<0)
        {
            NSLog(@"Enter a positive value=");
            scanf("%i",&value);
        }
        NSLog(@"value=%i",value);
        for(i=1;i<=value;i++)
        {
            sum=sum+(1.0/i);
        }
        NSLog(@"Value of nth harmonic value %f",sum);
    }
    return 0;
}
