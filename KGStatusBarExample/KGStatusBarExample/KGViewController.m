//
//  KGViewController.m
//  KGStatusBarExample
//
//  Created by Kevin Gibbon on 3/3/13.
//  Copyright (c) 2013 Kevin Gibbon. All rights reserved.
//

#import "KGViewController.h"

@interface KGViewController ()

- (IBAction)successButtonPressed:(id)sender;
- (IBAction)errorButtonPressed:(id)sender;
- (IBAction)statusButtonPressed:(id)sender;
- (IBAction)dismissButtonPressed:(id)sender;


@end

@implementation KGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [KGStatusBar sharedView].topBarColor = [UIColor greenColor];
    [KGStatusBar sharedView].textColor = [UIColor blueColor];
    [KGStatusBar sharedView].textFont = [UIFont fontWithName:@"HelveticaNeue" size:15];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)successButtonPressed:(id)sender {

    NSString *userNameString = [NSString stringWithFormat:@"%@: ", @"Rudiger Simpson"];
    NSString *fullString = [userNameString stringByAppendingString:@"This is a long message"];
    
    NSRange range = [fullString rangeOfString:userNameString];
    NSMutableAttributedString *messageAttributedString = [[NSMutableAttributedString alloc] initWithString:fullString];
    
    [messageAttributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14] range:range];

    [KGStatusBar showSuccessWithAttributedStatus:messageAttributedString];
}

- (IBAction)errorButtonPressed:(id)sender {
    [KGStatusBar showErrorWithStatus:@"Error syncing files"];
}

- (IBAction)statusButtonPressed:(id)sender {
    [KGStatusBar showWithStatus:@"Loading..."];
}

- (IBAction)dismissButtonPressed:(id)sender {
    [KGStatusBar dismiss];
}
@end
