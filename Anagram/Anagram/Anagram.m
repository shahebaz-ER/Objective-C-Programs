//
//  Anagram.m
//  Anagram
//
//  Created by BridgeLabz Solutions LLP on 23/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"
@implementation Anagram
static char charArray1[20];
static char charArray2[20];
+(void) userInput{
    NSLog(@"Enter string no 1=");
    scanf("%s",&charArray1);
    NSLog(@"Enter string no 2=");
    scanf("%s",&charArray2);
}
+(void) toUppercase{
    
    for(int i=0;i<strlen(charArray1);i++){
        charArray1[i] = toupper(charArray1[i]);
    }
    for(int i=0;i<strlen(charArray2);i++){
        charArray2[i] = toupper(charArray2[i]);
    }
}
+(void) sort{
    int i,j,l;
    char ch;
    l=(int)strlen(charArray1);
    /* sorting process */
    for(i=1;i<l;i++)
        for(j=0;j<l-i;j++)
            if(charArray1[j]>charArray1[j+1])
            {
                ch=charArray1[j];
                charArray1[j] = charArray1[j+1];
                charArray1[j+1]=ch;
            }
    for(i=1;i<l;i++)
        for(j=0;j<l-i;j++)
            if(charArray2[j]>charArray2[j+1])
            {
                ch=charArray2[j];
                charArray2[j] = charArray2[j+1];
                charArray2[j+1]=ch;
            }

}
+(int) isAnagram{
    if((strlen(charArray1)==strlen(charArray2)))
    {
    for (int i=0; i<strlen(charArray1);i++) {
        if(!(charArray1[i]==charArray2[i]))
        {
            NSLog(@"Strings are not anagram.");
            return 0;
        }
        
    }
    NSLog(@"Strings are  anagram.");
    return 0;}
    else
    {
        NSLog(@"Please Enter two Strings of Same length=");
        [Anagram userInput];
    }
    return 0;
}
@end
