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

- (IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
}


@end
