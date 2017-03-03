//
//  Palindrome.h
//  Palindrome
//
//  Created by BridgeLabz Solutions LLP on 17/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import<Foundation/Foundation.h>

@interface Palindrome:NSObject
{   int len;
    bool rst;
    char string2[20];
    
}
-(void)getString:(char[])string1;
-(void)result:(char[])string3;

@end
