//
//  CCViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solutions
//
//  Created by Rob Lipp on 2015-09-24.
//  Copyright (c) 2015 Rob Lipp. All rights reserved.
//

#import "CCViewController.h"
#import "CCCreateAccountViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.usernameLabel.text = [[NSUserDefaults standardUserDefaults]objectForKey:USER_NAME];
    self.passwordLabel.text = [[NSUserDefaults standardUserDefaults]objectForKey:USER_PASSWORD];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
