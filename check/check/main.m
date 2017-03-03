//
//  main.m
//  check
//
//  Created by BridgeLabz Solutions LLP on 03/03/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int input;
        /*int temp,input[10]={0,0,0,0,0,0,0,0,0,0};
        temp=input[0];
        temp+=1;
        input[0]=temp;
        NSLog(@"%i",input[0]);
        temp+=1;
        NSLog(@"%i",temp);
        */
        
        while(true)
        { scanf("%i",&input);
            NSLog(@"Hello, World! = %i",(input%11));}
    }
    return 0;
}
