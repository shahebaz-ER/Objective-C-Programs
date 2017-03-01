
#import <Foundation/Foundation.h>
#import "Node.h"

@interface Node :NSObject
{
    NSString *_currentVal;
    Node *_next;
    NSMutableArray *linkList;
}
@property (readwrite)NSString *currentValue;
@property (retain)Node *next;

-(void)insert:(NSString*)insertval;
-(void)print;
-(void)search:(NSString*)number;
-(NSMutableArray *)readFromFile;

@end
