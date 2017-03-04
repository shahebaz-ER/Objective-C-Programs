#import <Foundation/Foundation.h>

@interface JSON : NSObject
{
    NSDictionary *someDictionary;
    NSArray *pc;
    NSArray *pd;
    NSArray *camera;
    NSDictionary *outputpc;
    NSDictionary *outputpd;
    NSDictionary *outputcamera;
    NSArray *sample1;
       NSArray *sample2;
       NSArray *sample3;
    NSArray *writearray;
    
}
-(void)getData;
-(int)calculatepc;
-(int)calculatepd;
-(int)calculatecamera;
-(void)writetojson;
@end
