//
//  main.m
//  Palindrome
//
//  Created by BridgeLabz Solutions LLP on 17/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Palindrome.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Palindrome *pl =[[Palindrome alloc]init];
        char input[20];
        printf("\nEnter String :\n");
        scanf("%s",input);
      
        [pl getString:input];
        [pl result:input];
       
        
    }
    return 0;
}
