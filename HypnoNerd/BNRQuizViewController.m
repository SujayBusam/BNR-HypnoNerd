//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Sujay Busam on 7/26/14.
//  Copyright (c) 2014 Sujay's Dev Center. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@end

@implementation BNRQuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Create two arrays with questions and answers and make the pointers point to them
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7",
                           @"What is the capital of Vermont"];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
        
        // Set the tab bar item's title and image
        self.tabBarItem.title = @"Quiz";
        UIImage *tabImage = [UIImage imageNamed:@"write"];
        self.tabBarItem.image = tabImage;
    }
    
    return self;
}

 - (IBAction)showQuestion:(id)sender
{
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    NSString *question = self.questions[self.currentQuestionIndex];
    
    // Display the question string
    self.questionLabel.text = question;
    
    // Replace the answer label
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender
{
    // Answer to the current question
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
}

@end
