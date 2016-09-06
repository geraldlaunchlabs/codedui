//
//  BotMenu.m
//  CodedUI
//
//  Created by LLDM on 31/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "BotMenu.h"

@implementation BotMenu



- (id)init
{
    self = [super init];
    if (self) {
        
        UIButton *btn1 = [[UIButton alloc] init];
        btn1.translatesAutoresizingMaskIntoConstraints = NO;
        btn1.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [btn1 setImage:[UIImage imageNamed:@"airbnb.png"] forState:UIControlStateNormal];
        [self addSubview:btn1];
        
        UIButton *btn2 = [[UIButton alloc] init];
        btn2.translatesAutoresizingMaskIntoConstraints = NO;
        btn2.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [btn2 setImage:[UIImage imageNamed:@"heart.png"] forState:UIControlStateNormal];
        [self addSubview:btn2];
        
        UIButton *btn3 = [[UIButton alloc] init];
        btn3.translatesAutoresizingMaskIntoConstraints = NO;
        btn3.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [btn3 setImage:[UIImage imageNamed:@"mail.png"] forState:UIControlStateNormal];
        [self addSubview:btn3];
        
        UIButton *btn4 = [[UIButton alloc] init];
        btn4.translatesAutoresizingMaskIntoConstraints = NO;
        btn4.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [btn4 setImage:[UIImage imageNamed:@"briefcase.png"] forState:UIControlStateNormal];
        [self addSubview:btn4];
        
        UIButton *btn5 = [[UIButton alloc] init];
        btn5.translatesAutoresizingMaskIntoConstraints = NO;
        btn5.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [btn5 setImage:[UIImage imageNamed:@"profile.png"] forState:UIControlStateNormal];
        [self addSubview:btn5];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn1
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1
                                                          constant:[BaseView getPortraitWidth]/30.0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn1
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeBottom
                                                        multiplier:1
                                                          constant:-[BaseView getPortraitWidth]/30.0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn1
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeLeft
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn1
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn2
                                                         attribute:NSLayoutAttributeWidth
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn2
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn1
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn2
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn1
                                                         attribute:NSLayoutAttributeBottom
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn2
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn1
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn2
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn3
                                                         attribute:NSLayoutAttributeWidth
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn3
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn2
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn3
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn2
                                                         attribute:NSLayoutAttributeBottom
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn3
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn2
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn3
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn4
                                                         attribute:NSLayoutAttributeWidth
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn4
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn3
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn4
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn3
                                                         attribute:NSLayoutAttributeBottom
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn4
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn3
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn4
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn5
                                                         attribute:NSLayoutAttributeWidth
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn5
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn4
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn5
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn4
                                                         attribute:NSLayoutAttributeBottom
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn5
                                                         attribute:NSLayoutAttributeRight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1
                                                          constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btn5
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:btn4
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1
                                                          constant:0]];
    }
    return self;
}

@end
