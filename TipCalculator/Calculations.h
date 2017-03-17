//
//  Calculations.h
//  TipCalculator
//
//  Created by David Guichon on 2017-03-17.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ViewController;

@interface Calculations : NSObject

-(NSString*)returnTipAmount:(ViewController *)sender;

-(float)calculateTipAmount:(ViewController *)sender;

-(float)convertBillAmountIntoFloat:(ViewController *)sender;

-(float)convertTipIntoFloat:(ViewController *)sender;;

@end
