//
//  Cubic.m
//  Cubic
//
//  Created by BridgeLabz Solutions LLP on 23/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cubic.h"
@implementation Cubic

+(int)  check{
    
    int N,i,j,k;
    NSLog(@"how many Element in the array do you want enter=" );
    scanf("%i",&N);
    int  arr[N];
    NSLog(@"Enter the %i Elememts of array=",N);
    for(i=0;i<N;i++)
        scanf("%i",&arr[i]);
    /*if(!check(arr))
        NSLog(@"Not match found..");*/
    
    for(i=0;i<N;i++)
    {
        for(j=0;j<N;j++)
        {
            if(!(j==i))
            {
                for(k=0;k<N;k++)
                {
                    if(!(k==j ||k==i))
                    {
                        if(arr[i]+arr[j]+arr[k]==0)
                        {
                        NSLog(@"\n sum of %i + %i + %i=0",arr[i],arr[j],arr[k]);
                            return 0;
                        }
                        
                            
                    }
                }
            }
            
        }
    }
    NSLog(@"No match found!!!..");
    return 0;
}
@end
