#import <Foundation/Foundation.h>
#import "Inventory.h"

@implementation JSON

-(void)getData{
    
    NSData *jsonData2=[NSData dataWithContentsOfFile:@"/Users/bridgelabz/Documents/Objective_Basics/InventoryManagement29/InventoryManagement29/myinput.json"];
    
    id jsonObjects = [NSJSONSerialization JSONObjectWithData:jsonData2 options:NSJSONReadingMutableContainers error:nil];
    someDictionary = (NSDictionary*)jsonObjects;
    
    //----------------------------------------------------------------------------------
    
    pc = someDictionary[@"PC"];
    pd = someDictionary[@"PenDrive"];
    camera = someDictionary[@"Camera"];
    
}

-(int)calculatepc{
    NSString *pcname[[pc count]];
    int i=0;
    int totalpcvalue=0;
    int valueforeachpc[[pc count]];
    for (NSDictionary *pcdata in pc) {
        valueforeachpc[i]=[[pcdata objectForKey:@"price"]intValue]*[[pcdata objectForKey:@"stock"]intValue];
        pcname[i]=[pcdata objectForKey:@"brand"];
        i++;
    }
    for (i=0; i<[pc count]; i++)
    {
        totalpcvalue=totalpcvalue+valueforeachpc[i];
    }
    printf("\n*************Rice***************\n");
    for (i=0; i<[pc count]; i++) {
        NSLog(@"Name:%@\tValue:%d",pcname[i],valueforeachpc[i]);
    }
    
    printf("\nTotal PC Vendor:%d",i);
    printf("\nTotal PC Value in Inventory:%d",totalpcvalue);
    //-------------------------write to file ---------
    outputpc=@{
                 @"PC": @[
                         @{
                             @"Total-PC-Item":[NSString stringWithFormat:@"%d",i] ,
                             @"Total-PC-Value":[NSString stringWithFormat:@"%d",totalpcvalue] }
                         
                         ]
                 };
    sample1=@[@{
                  @"Total-PC-Type":[NSString stringWithFormat:@"%d",i] ,
                  @"Total-PC-Value":[NSString stringWithFormat:@"%d",totalpcvalue]
                  
                  }];
    
    //-------------------------end -------------------
    return totalpcvalue;
}
-(int)calculatepd{
    NSString *pdname[[pd count]];
    int i=0;
    int totalpdvalue=0;
    int valueforeachpd[[pd count]];
    for (NSDictionary *pddata in pd) {
        valueforeachpd[i]=[[pddata objectForKey:@"price"]intValue]*[[pddata objectForKey:@"stock"]intValue];
        pdname[i]=[pddata objectForKey:@"brand"];
        i++;
    }
    for (i=0; i<[pd count]; i++)
    {
        totalpdvalue=totalpdvalue+valueforeachpd[i];
    }
    printf("\n************* Pen Drive ***************\n");
    for (i=0; i<[pd count]; i++) {
        NSLog(@"Brand:%@\tValue:%d",pdname[i],valueforeachpd[i]);
    }
    printf("\nTotal Pen Drive Type:%d",i);
    printf("\nTotal Pen Drive in Inventory:%d",totalpdvalue);
    //-------------------------write to file ---------
    outputpd=@{
                  @"Pen-Drive": @[
                          @{
                              @"Total-Pen-Drive-Type":[NSString stringWithFormat:@"%d",i] ,
                              @"Total-Pen-Drive-Value":[NSString stringWithFormat:@"%d",totalpdvalue]
                              }
                          
                          ]
                  };
    sample2=@[@{
                  @"Total-PD-Type":[NSString stringWithFormat:@"%d",i] ,
                  @"Total-PD-Value":[NSString stringWithFormat:@"%d",totalpdvalue]
                  
                  }];
    
    //-------------------------end -------------------
    return totalpdvalue;
    
}
-(int)calculatecamera{
    NSString *cameraname[[camera count]];
    int i=0;
    int totalcameravalue=0;
    int valueforeachcamera[[camera count]];
    for (NSDictionary *cameradata in camera) {
        valueforeachcamera[i]=[[cameradata objectForKey:@"price"]intValue]*[[cameradata objectForKey:@"stock"]intValue];
        cameraname[i]=[cameradata objectForKey:@"brand"];
        i++;
    }
    for (i=0; i<[camera count]; i++)
    {
        totalcameravalue=totalcameravalue+valueforeachcamera[i];
    }
    printf("\n*************Camera***************\n");
    for (i=0; i<[camera count]; i++) {
        NSLog(@"Brand:%@\tValue:%d",cameraname[i],valueforeachcamera[i]);
    }
    printf("\nTotal Camera Type:%d",i);
    printf("\nTotal Camera Value in Inventory:%d",totalcameravalue);
    //-------------------------write to file ---------
    outputcamera=@{
                  @"Camera": @[
                          @{
                              @"Total-Camera-Type":[NSString stringWithFormat:@"%d",i] ,
                              @"Total-Camera-Value":[NSString stringWithFormat:@"%d",totalcameravalue]
                              }
                          
                          ]
                  };
    sample3=@[@{
                 @"Total-Camera-Type":[NSString stringWithFormat:@"%d",i] ,
                 @"Total-Camera-Value":[NSString stringWithFormat:@"%d",totalcameravalue]
                 
                 }];
    
    //-------------------------end -------------------
    return totalcameravalue;
    
}

-(void)writetojson{
    NSDictionary *dict=[[NSDictionary alloc]initWithObjectsAndKeys:sample1,@"PC",sample2,@"Pen-Drive",sample3,@"Camera", nil];
  //  NSArray *finalarray=[[NSArray alloc]initWithObjects:outputpc,outputpd,outputcamera, nil];
    
    NSData *data1 = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:nil];
    NSString *jsonStr = [[NSString alloc] initWithData:data1
                                              encoding:NSUTF8StringEncoding];
    [jsonStr writeToFile:@"/Users/bridgelabz/Documents/Objective_Basics/InventoryManagement29/InventoryManagement29/myoutput.json" atomically:YES encoding:NSUTF8StringEncoding error:nil];
}


@end
