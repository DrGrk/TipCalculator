//
//  ViewController.h
//  TipCalculator
//
//  Created by David Guichon on 2017-03-17.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *billAmountTextField;

@property (strong, nonatomic) IBOutlet UILabel *tipAmountLabel;

@property (strong, nonatomic) IBOutlet UIButton *calculateTipButton;

@property (strong, nonatomic) IBOutlet UITextField *tipAmountTextField;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *testTextField;

- (IBAction)calculateTip:(UIButton *)sender;


@end

