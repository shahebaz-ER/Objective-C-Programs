




#import <Foundation/Foundation.h>
#import "Inventory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        JSON *js=[[JSON alloc]init];
        printf("\n********Welcome to Computer Hardware Store*******");
        [js getData];
        int a= [js calculatepc];
        int b= [js calculatepd];
        int c= [js calculatecamera];
        printf("\n----------------------------------------------");
        printf("\nTotal Inventory Value:%d\n\n",a+b+c);
        [js writetojson];
    }
    return 0;
}
