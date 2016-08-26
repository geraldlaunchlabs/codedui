//
//  HomeView.m
//  CodedUI
//
//  Created by LLDM on 23/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView {
    
}

@synthesize scroll;

//profPic,btn1,btn2,btn3,btn4,btn5,lbl1,lbl2,upcomingBtn,previousBtn,botMenu,scroll,img,midView,img2,g1,g2,g3,g4,btnBar,g5,g6,g7,roomView,picArray,label1Array,label2Array;

float screenWidth;
float screenHeight;

- (void)setupLayout:(int)topLayoutGuide {
    ////////////////////////////////////////////////////
    NSLog(@"\n\n\nTOP LAYOUT GUIDE: %d",topLayoutGuide);
    
    UIButton *upcomingBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    upcomingBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [upcomingBtn setTitle:@"Upcoming" forState:UIControlStateNormal];
    [upcomingBtn setTitleColor:[BaseView colorWithHexString:@"FD5055"] forState:UIControlStateNormal];
    upcomingBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    upcomingBtn.backgroundColor = [BaseView colorWithHexString:@"ECEDEF"];
    [self addSubview:upcomingBtn];
    
    UIButton *previousBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    previousBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [previousBtn setTitle:@"Previous" forState:UIControlStateNormal];
    [previousBtn setTitleColor:[BaseView colorWithHexString:@"ECEDEF"] forState:UIControlStateNormal];
    previousBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    previousBtn.backgroundColor = [BaseView colorWithHexString:@"FD5055"];
    [self addSubview:previousBtn];
    
    UIView *botMenu = [[UIView alloc]init];
    botMenu.translatesAutoresizingMaskIntoConstraints = NO;
    botMenu.backgroundColor = [UIColor whiteColor];
    [self addSubview:botMenu];
    
    UIView *g3 = [[UIView alloc]init];
    g3.translatesAutoresizingMaskIntoConstraints = NO;
    [botMenu addSubview:g3];
    ///////////////////////////////////////
    NSLog(@"\n\n\nTOP LAYOUT GUIDE: %@",g3);
    
    UIView *g4 = [[UIView alloc]init];
    g4.translatesAutoresizingMaskIntoConstraints = NO;
    [botMenu addSubview:g4];
    
    UIView *btnBar = [[UIView alloc]init];
    btnBar.translatesAutoresizingMaskIntoConstraints = NO;
    [botMenu addSubview:btnBar];
    
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
    
    scroll = [[UIScrollView alloc]init];
    scroll.translatesAutoresizingMaskIntoConstraints = NO;
    scroll.showsVerticalScrollIndicator = NO;
    scroll.scrollEnabled = YES;
    [self addSubview:scroll];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:upcomingBtn
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:topLayoutGuide+20]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:upcomingBtn
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:upcomingBtn
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:upcomingBtn
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:375.0/90.0
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:upcomingBtn
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:previousBtn
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:upcomingBtn
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:previousBtn
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:previousBtn
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:topLayoutGuide+20]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:previousBtn
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:previousBtn
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:previousBtn
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:375.0/90.0
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:botMenu
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:botMenu
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:botMenu
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:botMenu
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:botMenu
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:750.0/100.0
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:scroll
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:upcomingBtn
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:scroll
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:botMenu
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:scroll
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:scroll
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1
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

    
}

- (void) addRoomViewOnScrollView:(UIScrollView *)scrollView widthToHeightRatio:(float)ratio data:(NSDictionary *)data index:(int)i last:(BOOL)last{
    
    UIView *prevRoomView;
    if(i > 0) prevRoomView = (UIView *)[scrollView viewWithTag:1+(i-1)*4];
    else prevRoomView = nil;
    
    UIView *roomView = [[UIView alloc]init];
    roomView.translatesAutoresizingMaskIntoConstraints = NO;
    roomView.tag = 1+i*4;
    [scrollView addSubview:roomView];
    
    UIImageView *img = [[UIImageView alloc]init];
    img.translatesAutoresizingMaskIntoConstraints = NO;
    img.image = [UIImage imageNamed:data[@"img"]];
    [roomView addSubview:img];
    
    UIView *g1 = [[UIView alloc]init];
    g1.translatesAutoresizingMaskIntoConstraints = NO;
    [img addSubview:g1];
    
    UIView *g2 = [[UIView alloc]init];
    g2.translatesAutoresizingMaskIntoConstraints = NO;
    [img addSubview:g2];
    
    UIImageView *profPic = [[UIImageView alloc] initWithImage:[UIImage imageNamed:data[@"img"]]];
    profPic.translatesAutoresizingMaskIntoConstraints = NO;
    profPic.image = [UIImage imageNamed:data[@"profPic"]];
    //profPic.backgroundColor = [BaseView colorWithHexString:@"014A88"];
    profPic.contentMode = UIViewContentModeScaleAspectFill;
    profPic.tag = 2+i*4;
    [scrollView addSubview:profPic];
    
    UIView *g5 = [[UIView alloc]init];
    g5.translatesAutoresizingMaskIntoConstraints = NO;
    [scrollView addSubview:g5];
    
    UIView *g6 = [[UIView alloc]init];
    g6.translatesAutoresizingMaskIntoConstraints = NO;
    [scrollView addSubview:g6];
    
    UIView *g7 = [[UIView alloc]init];
    g7.translatesAutoresizingMaskIntoConstraints = NO;
    [scrollView addSubview:g7];
    
    UILabel *lbl1 = [[UILabel alloc]init];
    lbl1.translatesAutoresizingMaskIntoConstraints = NO;
    lbl1.text = data[@"lbl1"];
    lbl1.textColor = [BaseView colorWithHexString:@"474E4E"];
    lbl1.tag = 3+i*4;
    [scrollView addSubview:lbl1];
    
    UILabel *lbl2 = [[UILabel alloc]init];
    lbl2.translatesAutoresizingMaskIntoConstraints = NO;
    lbl2.text = data[@"lbl2"];
    lbl2.textColor = [BaseView colorWithHexString:@"858E91"];
    lbl2.tag = 4+i*4;
    [scrollView addSubview:lbl2];

    
    if(prevRoomView == nil) {
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:roomView
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:scrollView
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1
                                                            constant:0]];
    } else {
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:roomView
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:prevRoomView
                                                           attribute:NSLayoutAttributeBottom
                                                          multiplier:1
                                                            constant:0]];
    }
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:roomView
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:scrollView
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1
                                                      constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:roomView
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:scrollView
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:1
                                                      constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:roomView
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:roomView
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:ratio
                                                      constant:0]];
    
    [roomView addConstraint:[NSLayoutConstraint constraintWithItem:img
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomView
                                                       attribute:NSLayoutAttributeTop
                                                      multiplier:1
                                                        constant:0]];
    
    [roomView addConstraint:[NSLayoutConstraint constraintWithItem:img
                                                       attribute:NSLayoutAttributeCenterX
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomView
                                                       attribute:NSLayoutAttributeCenterX
                                                      multiplier:1
                                                        constant:0]];
    
    [roomView addConstraint:[NSLayoutConstraint constraintWithItem:img
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomView
                                                       attribute:NSLayoutAttributeWidth
                                                      multiplier:1
                                                        constant:0]];
    
    [roomView addConstraint:[NSLayoutConstraint constraintWithItem:img
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:img
                                                       attribute:NSLayoutAttributeHeight
                                                      multiplier:750.0/505.0
                                                        constant:0]];

    [img addConstraint:[NSLayoutConstraint constraintWithItem:g1
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:img
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:0]];
    
    [img addConstraint:[NSLayoutConstraint constraintWithItem:g1
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:img
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [img addConstraint:[NSLayoutConstraint constraintWithItem:g1
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:img
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1
                                                      constant:0]];
    
    [img addConstraint:[NSLayoutConstraint constraintWithItem:g1
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:g1
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:35.0/505.0
                                                      constant:0]];
    
    [img addConstraint:[NSLayoutConstraint constraintWithItem:g2
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:img
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [img addConstraint:[NSLayoutConstraint constraintWithItem:g2
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:g1
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1
                                                      constant:0]];
    
    [img addConstraint:[NSLayoutConstraint constraintWithItem:g2
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:g1
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:18.0/101.0
                                                      constant:0]];
    
    [img addConstraint:[NSLayoutConstraint constraintWithItem:g2
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:g2
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:2.0/1.0
                                                      constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:g2
                                                       attribute:NSLayoutAttributeTop
                                                      multiplier:1
                                                        constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                       attribute:NSLayoutAttributeRight
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:g2
                                                       attribute:NSLayoutAttributeRight
                                                      multiplier:1
                                                        constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:g2
                                                       attribute:NSLayoutAttributeLeft
                                                      multiplier:1
                                                        constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:profPic
                                                       attribute:NSLayoutAttributeHeight
                                                      multiplier:1/1
                                                        constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:g5
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:img
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:g5
                                                        attribute:NSLayoutAttributeBottom
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:roomView
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:g5
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:roomView
                                                        attribute:NSLayoutAttributeLeft
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:g5
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g5
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:35.0/145.0
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:g6
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:img
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:g6
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:roomView
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:g6
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:roomView
                                                        attribute:NSLayoutAttributeLeft
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:g6
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g6
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:750.0/35.0
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:g7
                                                        attribute:NSLayoutAttributeBottom
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:roomView
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:g7
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:roomView
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:g7
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:roomView
                                                        attribute:NSLayoutAttributeLeft
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:g7
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g7
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:750.0/35.0
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lbl1
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g6
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lbl1
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:roomView
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lbl1
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g5
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lbl1
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:lbl1
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:715.0/34.0
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lbl2
                                                        attribute:NSLayoutAttributeBottom
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g7
                                                        attribute:NSLayoutAttributeTop
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lbl2
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:roomView
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lbl2
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:g5
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1
                                                         constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lbl2
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:lbl2
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:715.0/29.0
                                                         constant:0]];
    
    if(last) {
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:scrollView
                                                           attribute:NSLayoutAttributeBottom
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:roomView
                                                           attribute:NSLayoutAttributeBottom
                                                          multiplier:1
                                                            constant:0]];
    }

}

@end
