//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Sujay Busam on 7/29/14.
//  Copyright (c) 2014 Sujay's Dev Center. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end


@implementation BNRReminderViewController

// Designated initializer - override
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Set the tab bar item's title
        self.tabBarItem.title = @"Reminder";
        
        // Set the tab bar item's image
        UIImage *tabImage = [UIImage imageNamed:@"Time"];
        self.tabBarItem.image = tabImage;
    }
    
    return self;
}

- (IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    notification.alertBody = @"Hypnotize me!";
    notification.fireDate = date;
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
}


// Override - some extra configuration just before view is added to window
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}


@end
