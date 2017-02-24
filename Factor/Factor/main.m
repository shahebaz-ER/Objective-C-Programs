/*
  main.m
  Factor

  Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 22/02/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.

                    ----Problem Statment-----
        6. Factors
 
            a. Desc -> Computes the prime factorization of N using brute force.
            b. I/P -> Number to find the prime factors
            c. Logic -> Traverse till i*i <= N instead of i <= N for efficiency.
            d. O/P -> Print the prime factors of number N.
*/
#import <Foundation/Foundation.h>
#import "Factor.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i;
      
        Factor *fc=[[Factor alloc]init];       //object created
        NSLog(@"Enter the N value for factor=");
        int value;
        scanf("%i",&value);
        for(i=1;i<=value;i++)
        {
            if([fc isPrime:i])   //method isPrime called
            {
                if([fc factPrime:value:i])   //method factPrime called
                    NSLog(@"result numbers =%i",i);
            }
        }
    }
    return 0;
}
