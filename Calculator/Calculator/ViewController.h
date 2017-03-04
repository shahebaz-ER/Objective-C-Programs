//
//  ViewController.h
//  Calculator
//
//  Created by BridgeLabz on 04/03/17.
//  Copyright © 2017 MAUJ MOBILE PVT LTD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    float result;
    IBOutlet UILabel *calculatorScreen;
    int currentOpertion;
    float currentNumber;
    
}
-(IBAction)buttonDigitPressed:(id)sender;
-(IBAction)buttonOperationPressed:(id)sender;
-(IBAction)cancelInput;
-(IBAction)cancelOperation;
@end

