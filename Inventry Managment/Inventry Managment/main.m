/*
    main.m
    Inventry Managment

    Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 03/03/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.

 
 =============================Problem Statement===============================
 
 
        27. JSON Inventory Data Management of Rice, Pulses and Wheats
            a. Desc -> Create a JSON file having Inventory Details for Rice, Pulses and Wheats
               with properties name, weight, price per kg.
            b. Use Library : Java JSON Library, For IOS JSON Library use
                NSJSONSerialization for parsing the JSON.
            c. I/P -> read in JSON File
            d. Logic -> Get JSON Object in Java or NSDictionary in iOS. Create Inventory
                        Object from JSON. Calculate the value for every Inventory.
            e. O/P -> Create the JSON from Inventory Object and output the JSON String
*/
#import <Foundation/Foundation.h>
#import "Inventry.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Inventry *js=[[Inventry alloc]init];
        [js getData];
        int a= [js calculateRice];
        int b= [js calculatePulse];
        int c= [js calculateWheat];
        printf("\n----------------------------------------------");
        printf("\nTotal Inventory Value:%d",a+b+c);
        [js writeToJson];

    }
    return 0;
}
