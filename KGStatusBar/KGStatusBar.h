//
//  KGStatusBar.h
//
//  Created by Kevin Gibbon on 2/27/13.
//  Copyright 2013 Kevin Gibbon. All rights reserved.
//  @kevingibbon
//

#import <UIKit/UIKit.h>

@interface KGStatusBar : UIView

@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIFont *textFont;
@property (nonatomic, strong) UIColor *topBarColor;

+ (KGStatusBar *)sharedView;
+ (void)showWithStatus:(NSString*)status;
+ (void)showErrorWithStatus:(NSString*)status;
+ (void)showSuccessWithStatus:(NSString*)status;
+ (void)dismiss;

@end
