//
//  HomeView.m
//  CodedUI
//
//  Created by LLDM on 23/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView

@synthesize homeViewDelegate;
@synthesize scroll;

- (void)setupLayout:(int)topLayoutGuide {
    
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
    
    BotMenu *botMenu = [[BotMenu alloc]init];
    botMenu.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:botMenu];
    
    scroll = [[UIScrollView alloc]init];
    scroll.translatesAutoresizingMaskIntoConstraints = NO;
    scroll.showsVerticalScrollIndicator = NO;
    scroll.scrollEnabled = YES;
    [self addSubview:scroll];
    
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:upcomingBtn
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:topLayoutGuide]];
    
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
                                                        toItem:upcomingBtn
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:0]];
    
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
}

- (void) addRoomViewOnScrollView:(UIScrollView *)scrollView data:(NSDictionary *)data index:(int)i last:(BOOL)last{
    
    UIView *prevRoomView;
    if(i > 0) prevRoomView = (UIView *)[scrollView viewWithTag:1+(i-1)*4];
    else prevRoomView = nil;
    
    UIButton *roomView = [[UIButton alloc]init];
    roomView.translatesAutoresizingMaskIntoConstraints = NO;
    roomView.tag = 1+i*4;
    [roomView addTarget:homeViewDelegate action:@selector(gotoProfile:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:roomView];
    
    UIImageView *img = [[UIImageView alloc]init];
    img.translatesAutoresizingMaskIntoConstraints = NO;
    img.image = [UIImage imageNamed:data[@"img"]];
    //[img setImage:[UIImage imageNamed:data[@"img"]] forState:UIControlStateNormal];
    [roomView addSubview:img];
    
    UIView *g1 = [[UIView alloc]init];
    g1.translatesAutoresizingMaskIntoConstraints = NO;
    [img addSubview:g1];
    
    UIView *g2 = [[UIView alloc]init];
    g2.translatesAutoresizingMaskIntoConstraints = NO;
    [img addSubview:g2];
    
    UIImageView *profPic = [[UIImageView alloc] init];
    profPic.translatesAutoresizingMaskIntoConstraints = NO;
    profPic.image = [UIImage imageNamed:data[@"profPic"]];
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
                                                    multiplier:750.0/650.0
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
