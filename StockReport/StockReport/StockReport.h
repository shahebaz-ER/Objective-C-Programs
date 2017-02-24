//
//  StockReport.h
//  StockReport
//
//  Created by BridgeLabz Solutions LLP on 23/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#ifndef StockReport_h
#define StockReport_h


#endif /* StockReport_h */
@interface Stock:NSObject
-(void)insertStockDetails;

@end
@interface StockPortfolio : NSObject
-(void)valueOfEachStock:(int) nStock:(NSMutableArray*) stockArray:(int[]) shareArray:(int[]) priceArray;

-(void)valueOfTotallStock:(int) nStock:(NSMutableArray*) stockArray:(int[]) shareArray:(int[]) priceArray;

@end
