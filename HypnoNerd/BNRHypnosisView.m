//
//  BNRHypnosisView.m
//  Hypnotiser
//
//  Created by Sujay Busam on 7/26/14.
//  Copyright (c) 2014 Sujay's Dev Center. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView ()

@property (strong,nonatomic) UIColor *circleColor;

@end

@implementation BNRHypnosisView

- (void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        // All instances of this view start with clear background color
        self.backgroundColor = [UIColor clearColor];
        
        self.circleColor = [UIColor lightGrayColor];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    
    // Figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // Largest circle will circumscribe the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    for (float currRadius = maxRadius; currRadius > 0; currRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currRadius, center.y)];
        
        [path addArcWithCenter:center
                        radius:currRadius
                    startAngle:0.0
                      endAngle:M_PI*2.0
                     clockwise:YES];
    }
    
    // Configure width
    path.lineWidth = 10;
    
    // Configure drawing color
    [self.circleColor setStroke];
    
    // Draw the line
    [path stroke];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ was touched.", self);
    
    // Get 3 random floats between 0 and 1
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    self.circleColor = randomColor;
}

@end
