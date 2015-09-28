//
//  CCSignInViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solutions
//
//  Created by Rob Lipp on 2015-09-24.
//  Copyright (c) 2015 Rob Lipp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCCreateAccountViewController.h"

@interface CCSignInViewController : UIViewController <CCCreateAccountViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField; // Hook up username text field
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField; // Hook up password text field

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender; // Hook up bar button
- (IBAction)loginButtonPressed:(UIButton *)sender; // Hook up login button

@end
