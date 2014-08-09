//
//  ViewController.h
//  NNAnalyticsController
//
//  Created by Scott Twichel on 8/6/14.
//  Copyright (c) 2014 PepperGum Games. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NNAnalyticsController.h"

@interface ViewController : UIViewController<UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *usernameTxt;
@property (weak, nonatomic) IBOutlet UITextField *fNameTxt;
@property (weak, nonatomic) IBOutlet UITextField *lNameTxt;

@property (weak, nonatomic) IBOutlet UITextField *emailTxt;


- (IBAction)createAccount:(id)sender;


@end
