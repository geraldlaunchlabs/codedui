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
        UIView *g3 = [[UIView alloc]init];
        g3.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:g3];
        
        UIView *g4 = [[UIView alloc]init];
        g4.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:g4];
        
        UIView *btnBar = [[UIView alloc]init];
        btnBar.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:btnBar];
        
        UIButton *btn1 = [[UIButton alloc] init];
        btn1.translatesAutoresizingMaskIntoConstraints = NO;
        btn1.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [btn1 setImage:[UIImage imageNamed:@"airbnblogo.jpg"] forState:UIControlStateNormal];
        [btnBar addSubview:btn1];
        
        UIButton *btn2 = [[UIButton alloc] init];
        btn2.translatesAutoresizingMaskIntoConstraints = NO;
        btn2.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [btn2 setImage:[UIImage imageNamed:@"heart.png"] forState:UIControlStateNormal];
        [btnBar addSubview:btn2];
        
        UIButton *btn3 = [[UIButton alloc] init];
        btn3.translatesAutoresizingMaskIntoConstraints = NO;
        btn3.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [btn3 setImage:[UIImage imageNamed:@"mail.jpg"] forState:UIControlStateNormal];
        [btnBar addSubview:btn3];
        
        UIButton *btn4 = [[UIButton alloc] init];
        btn4.translatesAutoresizingMaskIntoConstraints = NO;
        btn4.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [btn4 setImage:[UIImage imageNamed:@"briefcase.jpg"] forState:UIControlStateNormal];
        [btnBar addSubview:btn4];
        
        UIButton *btn5 = [[UIButton alloc] init];
        btn5.translatesAutoresizingMaskIntoConstraints = NO;
        btn5.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [btn5 setImage:[UIImage imageNamed:@"profile.png"] forState:UIControlStateNormal];
        [btnBar addSubview:btn5];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:g3
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeTop
                                                           multiplier:1
                                                             constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:g3
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1
                                                             constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:g3
                                                            attribute:NSLayoutAttributeLeft
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeLeft
                                                           multiplier:1
                                                             constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:g3
                                                            attribute:NSLayoutAttributeWidth
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:g3
                                                            attribute:NSLayoutAttributeHeight
                                                           multiplier:750.0/25.0
                                                             constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:g4
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1
                                                             constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:g4
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1
                                                             constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:g4
                                                            attribute:NSLayoutAttributeLeft
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeLeft
                                                           multiplier:1
                                                             constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:g4
                                                            attribute:NSLayoutAttributeWidth
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:g4
                                                            attribute:NSLayoutAttributeHeight
                                                           multiplier:750.0/25.0
                                                             constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btnBar
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:g3
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1
                                                             constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btnBar
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:g4
                                                            attribute:NSLayoutAttributeTop
                                                           multiplier:1
                                                             constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btnBar
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1
                                                             constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:btnBar
                                                            attribute:NSLayoutAttributeLeft
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeLeft
                                                           multiplier:1
                                                             constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn1
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btnBar
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn1
                                                           attribute:NSLayoutAttributeBottom
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btnBar
                                                           attribute:NSLayoutAttributeBottom
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn1
                                                           attribute:NSLayoutAttributeLeft
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btnBar
                                                           attribute:NSLayoutAttributeLeft
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn2
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btnBar
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn2
                                                           attribute:NSLayoutAttributeBottom
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btnBar
                                                           attribute:NSLayoutAttributeBottom
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn2
                                                           attribute:NSLayoutAttributeLeft
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btn1
                                                           attribute:NSLayoutAttributeRight
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn3
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btnBar
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn3
                                                           attribute:NSLayoutAttributeBottom
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btnBar
                                                           attribute:NSLayoutAttributeBottom
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn3
                                                           attribute:NSLayoutAttributeLeft
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btn2
                                                           attribute:NSLayoutAttributeRight
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn4
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btnBar
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn4
                                                           attribute:NSLayoutAttributeBottom
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btnBar
                                                           attribute:NSLayoutAttributeBottom
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn4
                                                           attribute:NSLayoutAttributeLeft
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btn3
                                                           attribute:NSLayoutAttributeRight
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn5
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btnBar
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn5
                                                           attribute:NSLayoutAttributeBottom
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btnBar
                                                           attribute:NSLayoutAttributeBottom
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn5
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:btnBar
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1
                                                             constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn5
                                                            attribute:NSLayoutAttributeLeft
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:btn4
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1
                                                             constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn1
                                                           attribute:NSLayoutAttributeWidth
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btn2
                                                           attribute:NSLayoutAttributeWidth
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn2
                                                           attribute:NSLayoutAttributeWidth
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btn3
                                                           attribute:NSLayoutAttributeWidth
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn3
                                                           attribute:NSLayoutAttributeWidth
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btn4
                                                           attribute:NSLayoutAttributeWidth
                                                          multiplier:1
                                                            constant:0]];
        
        [btnBar addConstraint:[NSLayoutConstraint constraintWithItem:btn4
                                                           attribute:NSLayoutAttributeWidth
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:btn5
                                                           attribute:NSLayoutAttributeWidth
                                                          multiplier:1
                                                            constant:0]];
    }
    return self;
}

@end
