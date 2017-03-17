//
//  ViewController.m
//  TipCalculator
//
//  Created by David Guichon on 2017-03-17.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "ViewController.h"
#import "Calculations.h"


@interface ViewController ()

@property Calculations* calculations;
@property (nonatomic) CGRect currentTextFieldRect;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _calculations = [[Calculations alloc] init];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardWillHideNotification object:nil];
}



- (IBAction)calculateTip:(UIButton *)sender {
    self.tipAmountLabel.text = [self.calculations returnTipAmount:self];
}


//ADJUSTMENT FOR KEYBOARD

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    self.currentTextFieldRect = textField.frame;
    return YES;
}


- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    
    
    [self.view endEditing:YES];
    return YES;
}


- (void)keyboardDidShow:(NSNotification *)notification
{
    // break this nested statement out
    
    
    // determine whether to move
    CGRect keyboardRect = [[[notification userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    
    CGRect textFieldRect = self.currentTextFieldRect;
    CGFloat textFieldHeight = textFieldRect.size.height;
    CGFloat textFieldYPostion = textFieldRect.origin.y + textFieldHeight;
    CGFloat keyboardYPostion = keyboardRect.origin.y;
    
    if (textFieldYPostion < keyboardYPostion) {
        return;
    }

     if (textFieldYPostion > keyboardYPostion)
    [UIView animateWithDuration:1 animations:^{
        CGRect viewFrame = self.view.frame;
        viewFrame.origin.y = viewFrame.origin.y - keyboardYPostion;
        [self.view setFrame:CGRectMake(self.view.frame.origin.x, viewFrame.origin.y, self.view.frame.size.width, self.view.frame.size.height)];
    }];
}

-(void)keyboardDidHide:(NSNotification *)notification
{
    [UIView animateWithDuration:1 animations:^{
        CGRect f = self.view.frame;
        f.origin.y = 0.0f;
        //[self.view setFrame:CGRectMake(0,0,320,460)];
        
    }];
}

- (void)dealloc {
    
}

    




@end
