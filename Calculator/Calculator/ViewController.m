  /*
    ViewController.m
    Calculator

    Created by SHAHEBAZ,At BridgeLabz on 04/03/17.

=======================Problem Statement===================
====>Build calculator app using Objective C.
*/
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)buttonDigitPressed:(id)sender{
    currentNumber=currentNumber*10 + (float)[sender tag];
    calculatorScreen.text=[NSString stringWithFormat:@"%2f",currentNumber];
}
-(IBAction)buttonOperationPressed:(id)sender{
    if(currentOpertion==0) result=currentNumber;
    else{
        switch (currentOpertion) {
            case 1:
                result=(result+currentNumber);
                break;
            case 2:
                result=result-currentNumber;
                break;
            case 3:
                result=result*currentNumber;
                break;
            case 4:
            
                result=result/currentNumber;
                break;
            case 5:
                currentNumber=0;
                break;
            
        }
        
    }
    currentNumber=0;
    calculatorScreen.text=[NSString stringWithFormat:@"%2f",result];
    if([sender tag]==0) result=0;
    currentOpertion=(int)[sender tag];
    
}
-(IBAction)cancelInput{
    currentNumber=0;
    calculatorScreen.text=@"0";
}
-(IBAction)cancelOperation{
    currentNumber=0;
    calculatorScreen.text=@"0";
    currentOpertion=0;    }
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
