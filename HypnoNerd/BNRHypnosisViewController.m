//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Sujay Busam on 7/28/14.
//  Copyright (c) 2014 Sujay's Dev Center. All rights reserved.
//

#import "BNRHypnosisViewController.h"

@implementation BNRHypnosisViewController

// Override loadView
- (void)loadView
{
    // Create a view and set is as *the* view of the controller
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    self.view = backgroundView;
}

@end
