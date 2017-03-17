//
//  Calculations.m
//  TipCalculator
//
//  Created by David Guichon on 2017-03-17.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "Calculations.h"
#import "ViewController.h"

@interface Calculations ()

@property (nonatomic) NSString *totalBillNSS;
@property (nonatomic) NSInteger totalBillNSI;
@property (nonatomic) NSString *totalTip;


@end

@implementation Calculations

-(NSString*)returnTipAmount:(ViewController *)sender{
    float tipAmountFloat = [self calculateTipAmount:sender];
    NSString *tipAmountString = [NSString stringWithFormat:@"$%0.2f", tipAmountFloat];
    return tipAmountString;

}

-(float)calculateTipAmount:(ViewController *)sender{
    float billAmountFloat = [self convertBillAmountIntoFloat:sender];
    float tipPercentFloat = [self convertTipIntoFloat:sender];
    float tipAmountFloat = (billAmountFloat * tipPercentFloat);
    return tipAmountFloat;
}

-(float)convertTipIntoFloat:(ViewController *)sender{
    float tipFloat = [sender.tipAmountTextField.text integerValue];
    float tipPercentageFloat = (tipFloat / 100);
    return tipPercentageFloat;
}

-(float)convertBillAmountIntoFloat:(ViewController *)sender{
    float billAmountFloat = [sender.billAmountTextField.text integerValue];
    return billAmountFloat;
}



@end
