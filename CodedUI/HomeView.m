//
//  HomeView.m
//  CodedUI
//
//  Created by LLDM on 23/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView {
    UIButton *upcomingBtn;
    UIButton *previousBtn;
    UIView *botMenu;
    UIScrollView *scroll;
    UIImageView *img1;
    UIView *midView;
    UIImageView *img2;
    UIView *g1;
    UIView *g2;
    UIView *g3;
    UIView *g4;
    UIView *btnBar;
    UIView *g5;
    UIView *g6;
    UIView *g7;
}

@synthesize homeView,profPic,btn1,btn2,btn3,btn4,btn5,lbl1,lbl2;

float screenWidth;
float screenHeight;

- (void)setupLayout{

    homeView = [[UIView alloc]init];
    homeView.translatesAutoresizingMaskIntoConstraints = NO;
    [homeView setBackgroundColor:[UIColor whiteColor]];
    [self addSubview:homeView];
    
    upcomingBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    upcomingBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [upcomingBtn setTitle:@"Upcoming" forState:UIControlStateNormal];
    [upcomingBtn setTitleColor:[BaseView colorWithHexString:@"FD5055"] forState:UIControlStateNormal];
    upcomingBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    upcomingBtn.backgroundColor = [BaseView colorWithHexString:@"ECEDEF"];
    [homeView addSubview:upcomingBtn];
    
    previousBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    previousBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [previousBtn setTitle:@"Previous" forState:UIControlStateNormal];
    [previousBtn setTitleColor:[BaseView colorWithHexString:@"ECEDEF"] forState:UIControlStateNormal];
    previousBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    previousBtn.backgroundColor = [BaseView colorWithHexString:@"FD5055"];
    [homeView addSubview:previousBtn];
    
    botMenu = [[UIView alloc]init];
    botMenu.translatesAutoresizingMaskIntoConstraints = NO;
    botMenu.backgroundColor = [UIColor whiteColor];
    [homeView addSubview:botMenu];
    
    scroll = [[UIScrollView alloc]init];
    scroll.translatesAutoresizingMaskIntoConstraints = NO;
    scroll.showsVerticalScrollIndicator = NO;
    scroll.scrollEnabled = YES;
    [homeView addSubview:scroll];
    
    img1 = [[UIImageView alloc]init];
    img1.translatesAutoresizingMaskIntoConstraints = NO;
    img1.image = [UIImage imageNamed:@"image1.jpg"];
    [scroll addSubview:img1];
    
    midView = [[UIView alloc]init];
    midView.translatesAutoresizingMaskIntoConstraints = NO;
    midView.backgroundColor = [UIColor whiteColor];
    [scroll addSubview:midView];
    
    img2 = [[UIImageView alloc]init];
    img2.translatesAutoresizingMaskIntoConstraints = NO;
    img2.image = [UIImage imageNamed:@"image2.jpg"];
    [scroll addSubview:img2];
    
    g1 = [[UIView alloc]init];
    g1.translatesAutoresizingMaskIntoConstraints = NO;
    [img1 addSubview:g1];
    
    g2 = [[UIView alloc]init];
    g2.translatesAutoresizingMaskIntoConstraints = NO;
    [img1 addSubview:g2];

    profPic = [[UIImageView alloc]init];
    profPic.translatesAutoresizingMaskIntoConstraints = NO;
    profPic.image = [UIImage imageNamed:@"squirtle.png"];
    profPic.backgroundColor = [BaseView colorWithHexString:@"014A88"];
    [scroll addSubview:profPic];
    
    g3 = [[UIView alloc]init];
    g3.translatesAutoresizingMaskIntoConstraints = NO;
    [botMenu addSubview:g3];
    
    g4 = [[UIView alloc]init];
    g4.translatesAutoresizingMaskIntoConstraints = NO;
    [botMenu addSubview:g4];
    
    btnBar = [[UIView alloc]init];
    btnBar.translatesAutoresizingMaskIntoConstraints = NO;
    [botMenu addSubview:btnBar];
    
    btn1 = [[UIButton alloc] init];
    btn1.translatesAutoresizingMaskIntoConstraints = NO;
    [btn1 setImage:[UIImage imageNamed:@"airbnblogo.jpg"] forState:UIControlStateNormal];
    [btnBar addSubview:btn1];
    
    btn2 = [[UIButton alloc] init];
    btn2.translatesAutoresizingMaskIntoConstraints = NO;
    [btn2 setImage:[UIImage imageNamed:@"heart.png"] forState:UIControlStateNormal];
    [btnBar addSubview:btn2];
    
    btn3 = [[UIButton alloc] init];
    btn3.translatesAutoresizingMaskIntoConstraints = NO;
    [btn3 setImage:[UIImage imageNamed:@"mail.jpg"] forState:UIControlStateNormal];
    [btnBar addSubview:btn3];
    
    btn4 = [[UIButton alloc] init];
    btn4.translatesAutoresizingMaskIntoConstraints = NO;
    [btn4 setImage:[UIImage imageNamed:@"briefcase.jpg"] forState:UIControlStateNormal];
    [btnBar addSubview:btn4];
    
    btn5 = [[UIButton alloc] init];
    btn5.translatesAutoresizingMaskIntoConstraints = NO;
    [btn5 setImage:[UIImage imageNamed:@"profile.png"] forState:UIControlStateNormal];
    [btnBar addSubview:btn5];
    
    g5 = [[UIView alloc]init];
    g5.translatesAutoresizingMaskIntoConstraints = NO;
    [midView addSubview:g5];
    
    g6 = [[UIView alloc]init];
    g6.translatesAutoresizingMaskIntoConstraints = NO;
    [midView addSubview:g6];
    
    g7 = [[UIView alloc]init];
    g7.translatesAutoresizingMaskIntoConstraints = NO;
    [midView addSubview:g7];
    
    lbl1 = [[UILabel alloc]init];
    lbl1.translatesAutoresizingMaskIntoConstraints = NO;
    lbl1.text = @"ROOMS ONLY -House & Heated Pool";
    lbl1.textColor = [BaseView colorWithHexString:@"474E4E"];
    [midView addSubview:lbl1];
    
    lbl2 = [[UILabel alloc]init];
    lbl2.translatesAutoresizingMaskIntoConstraints = NO;
    lbl2.text = @"Southampton, US • May 29 to May 31 • 5 guests";
    lbl2.textColor = [BaseView colorWithHexString:@"858E91"];
    [midView addSubview:lbl2];
    
    [self setConstraints];
    
}

- (void)setConstraints {
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:homeView
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:homeView
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:homeView
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:homeView
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1
                                                      constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:upcomingBtn
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:homeView
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1
                                                          constant:20]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:upcomingBtn
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:homeView
                                                         attribute:NSLayoutAttributeLeft
                                                        multiplier:1
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:upcomingBtn
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:upcomingBtn
                                                         attribute:NSLayoutAttributeHeight
                                                        multiplier:375.0/90.0
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:upcomingBtn
                                                         attribute:NSLayoutAttributeRight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:previousBtn
                                                         attribute:NSLayoutAttributeLeft
                                                        multiplier:1
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:upcomingBtn
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:previousBtn
                                                         attribute:NSLayoutAttributeWidth
                                                        multiplier:1
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:previousBtn
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:homeView
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1
                                                          constant:20]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:previousBtn
                                                         attribute:NSLayoutAttributeRight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:homeView
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:previousBtn
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:previousBtn
                                                         attribute:NSLayoutAttributeHeight
                                                        multiplier:375.0/90.0
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:botMenu
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:homeView
                                                         attribute:NSLayoutAttributeBottom
                                                        multiplier:1
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:botMenu
                                                         attribute:NSLayoutAttributeRight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:homeView
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:botMenu
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:homeView
                                                         attribute:NSLayoutAttributeLeft
                                                        multiplier:1
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:botMenu
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:botMenu
                                                         attribute:NSLayoutAttributeHeight
                                                        multiplier:750.0/100.0
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:scroll
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:upcomingBtn
                                                         attribute:NSLayoutAttributeBottom
                                                        multiplier:1
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:scroll
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:botMenu
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:scroll
                                                         attribute:NSLayoutAttributeRight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:homeView
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:scroll
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:homeView
                                                         attribute:NSLayoutAttributeLeft
                                                        multiplier:1
                                                          constant:0]];
    
    [homeView addConstraint:[NSLayoutConstraint constraintWithItem:scroll
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:img2
                                                         attribute:NSLayoutAttributeBottom
                                                        multiplier:1
                                                          constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:img1
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:scroll
                                                       attribute:NSLayoutAttributeTop
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:img1
                                                         attribute:NSLayoutAttributeCenterX
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:scroll
                                                         attribute:NSLayoutAttributeCenterX
                                                        multiplier:1
                                                          constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:img1
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:scroll
                                                         attribute:NSLayoutAttributeWidth
                                                        multiplier:1
                                                          constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:img1
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:img1
                                                       attribute:NSLayoutAttributeHeight
                                                      multiplier:750.0/505.0
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:midView
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:img1
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:midView
                                                       attribute:NSLayoutAttributeCenterX
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:scroll
                                                       attribute:NSLayoutAttributeCenterX
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:midView
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:scroll
                                                       attribute:NSLayoutAttributeWidth
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:midView
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:midView
                                                       attribute:NSLayoutAttributeHeight
                                                      multiplier:750.0/145.0
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:img2
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:midView
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:img2
                                                       attribute:NSLayoutAttributeCenterX
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:scroll
                                                       attribute:NSLayoutAttributeCenterX
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:img2
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:scroll
                                                       attribute:NSLayoutAttributeWidth
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:img2
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:img2
                                                       attribute:NSLayoutAttributeHeight
                                                      multiplier:750.0/505.0
                                                        constant:0]];
    
    [img1 addConstraint:[NSLayoutConstraint constraintWithItem:g1
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:img1
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:0]];
    
    [img1 addConstraint:[NSLayoutConstraint constraintWithItem:g1
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:img1
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [img1 addConstraint:[NSLayoutConstraint constraintWithItem:g1
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:img1
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1
                                                      constant:0]];
    
    [img1 addConstraint:[NSLayoutConstraint constraintWithItem:g1
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:g1
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:35.0/505.0
                                                      constant:0]];
    [img1 addConstraint:[NSLayoutConstraint constraintWithItem:g2
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:img1
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [img1 addConstraint:[NSLayoutConstraint constraintWithItem:g2
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:g1
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1
                                                      constant:0]];
    
    [img1 addConstraint:[NSLayoutConstraint constraintWithItem:g2
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:g1
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:18.0/101.0
                                                      constant:0]];
    
    [img1 addConstraint:[NSLayoutConstraint constraintWithItem:g2
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:g2
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:2.0/1.0
                                                      constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:g2
                                                       attribute:NSLayoutAttributeTop
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                       attribute:NSLayoutAttributeRight
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:g2
                                                       attribute:NSLayoutAttributeRight
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:g2
                                                       attribute:NSLayoutAttributeLeft
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:profPic
                                                       attribute:NSLayoutAttributeHeight
                                                      multiplier:1/1
                                                        constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:g3
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:botMenu
                                                        attribute:NSLayoutAttributeTop
                                                       multiplier:1
                                                         constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:g3
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:botMenu
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:g3
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:botMenu
                                                        attribute:NSLayoutAttributeLeft
                                                       multiplier:1
                                                         constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:g3
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g3
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:750.0/25.0
                                                         constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:g4
                                                        attribute:NSLayoutAttributeBottom
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:botMenu
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1
                                                         constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:g4
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:botMenu
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:g4
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:botMenu
                                                        attribute:NSLayoutAttributeLeft
                                                       multiplier:1
                                                         constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:g4
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g4
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:750.0/25.0
                                                         constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:btnBar
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g3
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1
                                                         constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:btnBar
                                                        attribute:NSLayoutAttributeBottom
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g4
                                                        attribute:NSLayoutAttributeTop
                                                       multiplier:1
                                                         constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:btnBar
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:botMenu
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:btnBar
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:botMenu
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
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:btn5
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:btnBar
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [botMenu addConstraint:[NSLayoutConstraint constraintWithItem:btn5
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
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:g5
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:midView
                                                        attribute:NSLayoutAttributeTop
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:g5
                                                        attribute:NSLayoutAttributeBottom
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:midView
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:g5
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:midView
                                                        attribute:NSLayoutAttributeLeft
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:g5
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g5
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:35.0/145.0
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:g6
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:midView
                                                        attribute:NSLayoutAttributeTop
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:g6
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:midView
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:g6
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:midView
                                                        attribute:NSLayoutAttributeLeft
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:g6
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g6
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:750.0/35.0
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:g7
                                                        attribute:NSLayoutAttributeBottom
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:midView
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:g7
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:midView
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:g7
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:midView
                                                        attribute:NSLayoutAttributeLeft
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:g7
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g7
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:750.0/35.0
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:lbl1
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g6
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:lbl1
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:midView
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:lbl1
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g5
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:lbl1
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:lbl1
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:715.0/34.0
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:lbl2
                                                        attribute:NSLayoutAttributeBottom
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g7
                                                        attribute:NSLayoutAttributeTop
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:lbl2
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:midView
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:lbl2
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g5
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [midView addConstraint:[NSLayoutConstraint constraintWithItem:lbl2
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:lbl2
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:715.0/29.0
                                                         constant:0]];

}



@end
