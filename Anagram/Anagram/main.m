/*
    main.m
    Anagram

    Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 23/02/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.

                        ----Problem Stament----
    11. An Anagram Detection Example
 
        a. Desc -> One string is an anagram of another if the second is simply a
             rearrangement of the first. For example, 'heart' and 'earth' are anagrams...
        b. I/P -> Take 2 Strings as Input such abcd and dcba and Check for Anagrams
  c. O/P -> The Two Strings are Anagram or not....
*/
#import <Foundation/Foundation.h>
#import "Anagram.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        [Anagram userInput];
        [Anagram sort];
        [Anagram toUppercase];
        [Anagram isAnagram];}
    
    return 0;
}
