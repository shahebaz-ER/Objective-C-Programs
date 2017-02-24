//
//  StockReport.m
//  StockReport
//
//  Created by BridgeLabz Solutions LLP on 23/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockReport.h"
@implementation Stock
-(void)insertStockDetails{
    
    int i,nStock;
    char userName[20];
    StockPortfolio *sp=[[StockPortfolio alloc]init];
    NSMutableArray *stockArray = [[NSMutableArray alloc]init];
    
    NSLog(@"Enter the number of Stock you want to insert=");
    scanf("%i",&nStock);
    int shareArray[1000];
    int priceArray[1000];
    for(i=0;i<nStock;i++)
    {
        NSLog(@"\nEnter the name of Stock no %i =",i+1);
        scanf("%s",userName);
        NSString *uName = [NSString stringWithFormat:@"%s",userName];
        [stockArray insertObject:uName atIndex:i];
        NSLog(@"\nEnter the number of Share you want to insert =");
        scanf("%i",&shareArray[i]);
        NSLog(@"\nEnter the price of  share you want to set=");
        scanf("%i",&priceArray[i]);
        
    }
    [sp valueOfEachStock:nStock:stockArray:shareArray:priceArray];
    [sp valueOfTotallStock:nStock:stockArray:shareArray:priceArray];
}
@end

@implementation StockPortfolio
-(void)valueOfEachStock:(int) nStock:(NSMutableArray*) stockArray:(int[]) shareArray:(int[]) priceArray{
    NSLog(@"%@", stockArray);
    int i;
    NSLog(@"Totall no of Stock you have =%i",nStock);
    for(i=0;i<nStock;i++)
    {
        NSLog(@"Name of Stock[%i]=%@",(i+1),stockArray[i]);
        NSLog(@"Number  of share in the  Stock [%i]=%i",(i+1),shareArray[i]);
        NSLog(@"Price of one share in Stock [%i]=%i",(i+1),priceArray[i]);
    }

}
-(void)valueOfTotallStock:(int) nStock:(NSMutableArray*) stockArray:(int[]) shareArray:(int[]) priceArray{
    int i,temp=0,temp2=0;
    for(i=0;i<nStock;i++)
    {
        temp=temp+(shareArray[i]*priceArray[i]);
        temp2=(shareArray[i]*priceArray[i]);
        NSLog(@"The value  of totall share of Stock no=%i",temp2);
    }
   NSLog(@"The value  of totall  Stock is=%i",temp);

}
@end
