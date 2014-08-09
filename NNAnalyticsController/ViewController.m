//
//  ViewController.m
//  NNAnalyticsController
//
//  Created by Scott Twichel on 8/6/14.
//  Copyright (c) 2014 PepperGum Games. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSString *username;
    NSString *firstName;
    NSString *lastName;
    NSString *email;
    NSString *authenticationUsername;
    NSString *authenticationPassword;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    NSDictionary *newUserData= @{   @"username":            @"test1",
//                                    @"first_name":          @"test",
//                                    @"last_name":           @"test",
//                                    @"email":               @"stwichel@gmail.com",
//                                    @"groups":              @[],
//                                    @"user_permissions":    @[],
//                                    @"profile":             @{@"native_languages":@[]}
//                                };

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)createAccount:(id)sender {
    
    //Create data structure for the JSON data
    NSArray *dictionaryKeys = @[@"username",
                                @"first_name",
                                @"last_name",
                                @"email",
                                @"groups",
                                @"user_permissions",
                                @"profile"];
    NSArray *dictionaryValue = @[self.usernameTxt.text,
                                 self.fNameTxt.text,
                                 self.lNameTxt.text,
                                 self.emailTxt.text,
                                 @[],
                                 @[],
                                 @{@"native_languages":@[]}];
    NSDictionary *newUserData = [NSDictionary dictionaryWithObjects:dictionaryValue forKeys:dictionaryKeys];
    
    NSString *jsonFormat = [NNAnalyticsController formatUserDataForUpload:newUserData];
    
    //TODO: Enter correct username and password in the following statements
    authenticationUsername = @"";
    authenticationPassword = @"";
    if ([NNAnalyticsController postUserDataToServer:jsonFormat usingUsername:authenticationUsername password:authenticationPassword]) {
        UIAlertView *userCreationAlert = [[UIAlertView alloc]initWithTitle:@"Whoo-hoo!"
                                                                   message:@"User Created Successfully"
                                                                  delegate:0
                                                         cancelButtonTitle:@"Ok"
                                                         otherButtonTitles:nil];
        [userCreationAlert show];
    }
    else{
        UIAlertView *userCreationErrorAlert = [[UIAlertView alloc]initWithTitle:@"Uh-oh"
                                                                        message:@"We were unable to create the account at this time. Please check that you are connected to the internet and try again"
                                                                       delegate:0
                                                              cancelButtonTitle:@"Ok"
                                                              otherButtonTitles:nil];
        [userCreationErrorAlert show];
    }
    
}

@end
