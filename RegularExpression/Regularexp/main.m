/*
 Regular.m
 RegularExpression
 
 Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 03/03/17.
 Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
 
 =================================Problem Statements===========================
 
 28. Regular Expression Demonstration
 
    a. Desc -> Read in the following message: Hello <<name>>, We have your full
        name as <<full name>> in our system. your contact number is 91-xxxxxxxxxx.
        Please,let us know in case of any clarification Thank you BridgeLabz 01/01/2016.
        Use Regex to replace name, full name, Mobile#, and Date with proper value.
    b. I/P -> read in the Message
    c. Logic -> Use Regex to do the following
        i.   Replace <<name>> by first name of the user ( assume you are the user)
        ii.  replace <<full name>> by user full name.
        iii. replace any occurance of mobile number that should be in format
            91-xxxxxxxxxx by your contact number.
        iv.  replace any date in the format XX/XX/XXXX by current date.
 
    d. O/P -> Print the Modified Message.
 */

#import <Foundation/Foundation.h>
#import "Regular.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DataRead *data =[[DataRead alloc]init];
        char name[15];
        char sname[20];
        
        char mob[11];
        printf("\nEnter your name:\n");
        scanf("%s",name);
        printf("\nEnter your surname:\n");
        scanf("%s",sname);
        printf("\nEnter your Mobile No:\n");
        scanf("%s",mob);
        
        NSString *namestr =[NSString stringWithFormat:@"%s",name];
        NSString *fnamestr =[NSString stringWithFormat:@"%s",sname];
        NSString *mobstr =[NSString stringWithFormat:@"%s",mob];
  
        
         NSString *sms =@"Hello <<name>>, We have your full name as <<full name>> in our system. your contact number is 91-xxxxxxxxxx. Please,let us know in case of any clarification Thank you BridgeLabz 01/01/2016.";
        NSLog(@"\nMessage:%@\n",sms);
        [data setData:sms];
        [data dateDetect];
        [data display:namestr andfullname:fnamestr andmob:mobstr];
        
    }
    return 0;
}
