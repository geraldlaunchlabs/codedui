//
//  ProfileView.m
//  CodedUI
//
//  Created by LLDM on 31/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "ProfileView.h"

@interface ProfileView () {
    UIView *spc;
}

@end

@implementation ProfileView

@synthesize scroll;

-(void)setupLayout {
    
    UIImageView *coverPhoto = [[UIImageView alloc]init];
    coverPhoto.translatesAutoresizingMaskIntoConstraints = NO;
    coverPhoto.contentMode = UIViewContentModeScaleAspectFill;
    coverPhoto.tag = 1;
    [self addSubview:coverPhoto];
    
    UIImageView *profPic = [[UIImageView alloc]init];
    profPic.translatesAutoresizingMaskIntoConstraints = NO;
    profPic.contentMode = UIViewContentModeScaleAspectFill;
    profPic.tag = 2;
    [self addSubview:profPic];
    
    scroll = [[UIScrollView alloc]init];
    scroll.translatesAutoresizingMaskIntoConstraints = NO;
    scroll.showsVerticalScrollIndicator = NO;
    scroll.scrollEnabled = YES;
    scroll.backgroundColor = [UIColor whiteColor];
    [self addSubview:scroll];
    
    BotMenu *botMenu = [[BotMenu alloc]init];
    botMenu.translatesAutoresizingMaskIntoConstraints = NO;
    botMenu.backgroundColor =[UIColor whiteColor];
    [self addSubview:botMenu];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:coverPhoto
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:self
                                                       attribute:NSLayoutAttributeTop
                                                      multiplier:1
                                                        constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:coverPhoto
                                                       attribute:NSLayoutAttributeCenterX
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:self
                                                       attribute:NSLayoutAttributeCenterX
                                                      multiplier:1
                                                        constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:coverPhoto
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:self
                                                       attribute:NSLayoutAttributeWidth
                                                      multiplier:1
                                                        constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:coverPhoto
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:coverPhoto
                                                       attribute:NSLayoutAttributeHeight
                                                      multiplier:750.0/725.0
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
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
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
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                           attribute:NSLayoutAttributeBottom
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:coverPhoto
                                                           attribute:NSLayoutAttributeBottom
                                                          multiplier:1.0/1.125
                                                            constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                           attribute:NSLayoutAttributeRight
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:coverPhoto
                                                           attribute:NSLayoutAttributeRight
                                                          multiplier:1.0/1.125
                                                            constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                           attribute:NSLayoutAttributeWidth
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:coverPhoto
                                                           attribute:NSLayoutAttributeWidth
                                                          multiplier:1.0/3.0
                                                            constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                           attribute:NSLayoutAttributeWidth
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:profPic
                                                           attribute:NSLayoutAttributeHeight
                                                          multiplier:1/1
                                                            constant:0]];
}

- (void)addProfileBlockToScrollView:(UIScrollView *)scrollView header:(NSString *)header content:(NSString *)content last:(BOOL)last {
    static int i = 4;
    UIColor *aveColor = [BaseView averageColorOfImage:((UIImageView *)[self viewWithTag:1]).image];
    scrollView.backgroundColor = [UIColor clearColor];
    self.backgroundColor = aveColor;
    
    ProfileBlock *profileBlock = [[ProfileBlock alloc]init];
    profileBlock.translatesAutoresizingMaskIntoConstraints = NO;
    profileBlock.header.text = header;
    profileBlock.content.text = content;
    profileBlock.header.textColor = aveColor;
    profileBlock.content.textColor = aveColor;
    profileBlock.backgroundColor = [UIColor whiteColor]; //[BaseView changeOpacity:aveColor amount:0.25];
    profileBlock.content.backgroundColor = [BaseView changeOpacity:aveColor amount:0.125];
    profileBlock.tag = i++;
    profileBlock.header.tag = i++;
    profileBlock.content.tag = i++;
    [scrollView addSubview:profileBlock];
    
    if (i == 7) {
        spc = [[UIView alloc]init];
        spc.translatesAutoresizingMaskIntoConstraints = NO;
        spc.backgroundColor = aveColor;
        [scrollView addSubview:spc];
        
        UIButton *search = [[UIButton alloc]init];
        search.translatesAutoresizingMaskIntoConstraints = NO;
        [search setImage:[UIImage imageNamed:@"search.png"] forState:UIControlStateNormal];
        search.backgroundColor = aveColor;
        search.contentMode = UIViewContentModeScaleAspectFill;
        search.tag = 3;
        [scrollView addSubview:search];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:spc
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:scrollView
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1
                                                            constant:[[UIScreen mainScreen]bounds].size.width/(750.0/725.0)]];
        
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:spc
                                                           attribute:NSLayoutAttributeBottom
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:search
                                                           attribute:NSLayoutAttributeBottom
                                                          multiplier:1/1
                                                            constant:0]];
        
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:spc
                                                           attribute:NSLayoutAttributeCenterX
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:scrollView
                                                           attribute:NSLayoutAttributeCenterX
                                                          multiplier:1
                                                            constant:0]];
        
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:spc
                                                           attribute:NSLayoutAttributeWidth
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:scrollView
                                                           attribute:NSLayoutAttributeWidth
                                                          multiplier:1
                                                            constant:0]];
        
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:search
                                                           attribute:NSLayoutAttributeCenterY
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:spc
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1
                                                            constant:0]];
        
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:search
                                                           attribute:NSLayoutAttributeLeft
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:spc
                                                           attribute:NSLayoutAttributeCenterX
                                                          multiplier:30.0/375.0
                                                            constant:0]];
        
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:search
                                                           attribute:NSLayoutAttributeWidth
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:spc
                                                           attribute:NSLayoutAttributeWidth
                                                          multiplier:140.0/750.0
                                                            constant:0]];
        
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:search
                                                           attribute:NSLayoutAttributeWidth
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:search
                                                           attribute:NSLayoutAttributeHeight
                                                          multiplier:1/1
                                                            constant:0]];
        
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:profileBlock
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:spc
                                                           attribute:NSLayoutAttributeBottom
                                                          multiplier:1
                                                            constant:0]];
    } else {
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:profileBlock
                                                               attribute:NSLayoutAttributeTop
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:(ProfileBlock *)[scrollView viewWithTag:i-6]
                                                               attribute:NSLayoutAttributeBottom
                                                              multiplier:1
                                                                constant:2]];
    }
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:profileBlock
                                                       attribute:NSLayoutAttributeBottom
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:profileBlock.content
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1
                                                        constant:[[UIScreen mainScreen]bounds].size.width/15]];
    
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:profileBlock
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:scrollView
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1
                                                      constant:0]];
    
    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:profileBlock
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:scrollView
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:1
                                                      constant:0]];
    
    if(last) {
        i = 4;
        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:scrollView
                                                           attribute:NSLayoutAttributeBottom
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:profileBlock
                                                           attribute:NSLayoutAttributeBottom
                                                          multiplier:1
                                                            constant:0]];
    }
}

@end
