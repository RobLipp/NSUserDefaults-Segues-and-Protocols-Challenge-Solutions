//
//  CCCreateAccountViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solutions
//
//  Created by Rob Lipp on 2015-09-24.
//  Copyright (c) 2015 Rob Lipp. All rights reserved.
//

#import <UIKit/UIKit.h>

#define USER_NAME @"username"
#define USER_PASSWORD @"password"

@protocol CCCreateAccountViewControllerDelegate <NSObject> // Create protocol

-(void)didCancel;
-(void)didCreateAccount;

@end

@interface CCCreateAccountViewController : UIViewController

@property (weak, nonatomic) id <CCCreateAccountViewControllerDelegate> delegate; // Delegate property

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField; // Hook up username text field
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField; // Hook up password text fiels
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField; // Hook up confirm password text field

- (IBAction)createAccountButtonPressed:(UIButton *)sender; // Hook up create account button
- (IBAction)cancelButtonPressed:(UIButton *)sender; // Hook up cancel button


@end
