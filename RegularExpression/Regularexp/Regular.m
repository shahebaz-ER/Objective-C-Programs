
#import <Foundation/Foundation.h>
#import "Regular.h"
@implementation DataRead

-(void)setData:(NSString *)string{
    message=string;
}

-(void)dateDetect{
    NSError *error = NULL;
    NSDataDetector *detector = [NSDataDetector dataDetectorWithTypes:(NSTextCheckingTypes)NSTextCheckingTypeDate error:&error];
    
    NSArray *matches = [detector matchesInString:message
                                         options:0
                                           range:NSMakeRange(0, [message length])];
    
    for (NSTextCheckingResult *match in matches) {
        
        if ([match resultType] == NSTextCheckingTypeDate) {
            
            NSDate *date = [match date];
            
            NSDateFormatter *formatter;
           // NSString        *dateString;
            
            formatter = [[NSDateFormatter alloc] init];
            [formatter setDateFormat:@"dd/MM/yyyy"];
            
            datepattern = [formatter stringFromDate:date];
           
           //NSLog(@"Date Pattern : %@",datepattern);
           //NSLog(@"Orignal date:%@",date);
            
        }}
    //----------
    NSDate *cdate =[NSDate date];
    NSDateFormatter *dformat =[[NSDateFormatter alloc]init];
    [dformat setDateFormat:@"dd/MM/yyyy"];
    currentdate =[dformat stringFromDate:cdate];
   // NSLog(@"Current date:%@",currentdate);
}
-(void)display:(NSString*)name andfullname:(NSString*)fname andmob:(NSString*)mob{
    NSError *error=nil;
    [name stringByAppendingString:@"  "];
    NSString *fullname=[name stringByAppendingString:fname];
    //---for name-----
    
    NSRegularExpression *regexname = [NSRegularExpression regularExpressionWithPattern:@"<<name>>" options:NSRegularExpressionCaseInsensitive error:&error];
    NSString *mname = [regexname stringByReplacingMatchesInString:message options:0 range:NSMakeRange(0, [message length]) withTemplate:name];
  
    //----for full name----
    
    
    NSRegularExpression *regexfname=[NSRegularExpression regularExpressionWithPattern:@"<<full name>>" options:NSRegularExpressionCaseInsensitive error:&error];
    NSString *mfname=[regexfname stringByReplacingMatchesInString:mname options:0 range:NSMakeRange(0,[mname length]) withTemplate:fullname];
    
    //----for mobile no*----
    
    
    NSRegularExpression *regexmob=[NSRegularExpression regularExpressionWithPattern:@"xxxxxxxxxx" options:NSRegularExpressionCaseInsensitive error:&error];
    NSString *mmob =[regexmob stringByReplacingMatchesInString:mfname options:0 range:NSMakeRange(0,[mfname length]) withTemplate:mob];
    
    //----for date---
    
    
    NSRegularExpression *regexdate =[NSRegularExpression regularExpressionWithPattern:datepattern options:NSRegularExpressionCaseInsensitive error:&error];
    NSString *mdate=[regexdate stringByReplacingMatchesInString:mmob options:0 range:NSMakeRange(0,[mmob length]) withTemplate:currentdate];
    NSLog(@"\nModified Content:%@\n",mdate);
   
}
@end
