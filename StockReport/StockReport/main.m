/*
    main.m
    StockReport

    Created by BridgeLabz Solutions LLP on 23/02/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.

                        ----Problem Statment----
        13. Stock Report
 
            a. Desc -> Write a program to read in Stock Names, Number of Share, Share Price.  Print a Stock Report with total value of each Stock and the total value of Stock.
            b. I/P -> N number of Stocks, for Each Stock Read In the Share Name, Number of Share, and Share Price
            c. Logic -> Calculate the value of each stock and the total value
            d. O/P -> Print the Stock Report.
            e. Hint -> Create Stock and Stock Portfolio Class holding the list of Stocks read from the input file. Have functions in the Class to calculate the value of each stock and the value of total stocks
 */
#import <Foundation/Foundation.h>
#import "StockReport.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Stock *stockObj=[[Stock alloc]init];
        [stockObj insertStockDetails];
    }
    return 0;
}
