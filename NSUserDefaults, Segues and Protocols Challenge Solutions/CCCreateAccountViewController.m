//
//  CCCreateAccountViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solutions
//
//  Created by Rob Lipp on 2015-09-24.
//  Copyright (c) 2015 Rob Lipp. All rights reserved.
//

#import "CCCreateAccountViewController.h"

@interface CCCreateAccountViewController ()

@end

@implementation CCCreateAccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)createAccountButtonPressed:(UIButton *)sender
{
    if ((self.usernameTextField.text.length != 0) && (self.passwordTextField.text.length != 0) && [self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text]) {
        [[NSUserDefaults standardUserDefaults] setObject:self.usernameTextField.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults] setObject:self.passwordTextField.text forKey:USER_PASSWORD];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        [self.delegate didCreateAccount];
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"ERROR" message:@"Information not entered correctly" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alertView show];
    }
}

- (IBAction)cancelButtonPressed:(UIButton *)sender
{
    [self.delegate didCancel];
}


@end
