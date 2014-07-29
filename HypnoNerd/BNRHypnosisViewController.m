//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Sujay Busam on 7/28/14.
//  Copyright (c) 2014 Sujay's Dev Center. All rights reserved.
//

#import "BNRHypnosisViewController.h"

@implementation BNRHypnosisViewController

// Designated initializer - overriding
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Set the tab bar item's title
        self.tabBarItem.title = @"Hypnotise";
        
        // Set the tab bar item's image
        UIImage *tabImage = [UIImage imageNamed:@"Hypno"];
        self.tabBarItem.image = tabImage;
    }
    
    return self;
}

// Override loadView
- (void)loadView
{
    // Create a view and set is as *the* view of the controller
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    self.view = backgroundView;
}

@end
