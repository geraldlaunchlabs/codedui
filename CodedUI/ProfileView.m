//
//  ProfileView.m
//  CodedUI
//
//  Created by LLDM on 31/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "ProfileView.h"

@interface ProfileView () {
    
}

@end

@implementation ProfileView

@synthesize scroll;

-(void)setupLayout:(int)topLayoutGuide {
    BotMenu *botMenu = [[BotMenu alloc]init];
    botMenu.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:botMenu];
    
    scroll = [[UIScrollView alloc]init];
    scroll.translatesAutoresizingMaskIntoConstraints = NO;
    scroll.showsVerticalScrollIndicator = NO;
    scroll.scrollEnabled = YES;
    scroll.backgroundColor = [BaseView colorWithHexString:@"DEE1E0"];
    [self addSubview:scroll];
    
    UIImageView *coverPhoto = [[UIImageView alloc]init];
    coverPhoto.translatesAutoresizingMaskIntoConstraints = NO;
    coverPhoto.contentMode = UIViewContentModeScaleAspectFill;
    coverPhoto.tag = 1;
    [scroll addSubview:coverPhoto];
    
    UIImageView *profPic = [[UIImageView alloc]init];
    profPic.translatesAutoresizingMaskIntoConstraints = NO;
    profPic.contentMode = UIViewContentModeScaleAspectFill;
    profPic.tag = 2;
    [scroll addSubview:profPic];
    
    UIView * profBlock = [[UIView alloc]init];
    profBlock.translatesAutoresizingMaskIntoConstraints = NO;
    profBlock.backgroundColor = [UIColor whiteColor];
    profBlock.tag = 401;
    [scroll addSubview:profBlock];
    
    UILabel *name = [[UILabel alloc]init];
    name.translatesAutoresizingMaskIntoConstraints = NO;
    //name.tag = 3;
    [profBlock addSubview:name];
    
    UITextView *description = [[UITextView alloc]init];
    description.translatesAutoresizingMaskIntoConstraints = NO;
    description.scrollEnabled = NO;
    description.editable = NO;
    //description.tag = 4;
    [profBlock addSubview:description];
    
    ProfileBlock *profile = [[ProfileBlock alloc]init];
    profile.translatesAutoresizingMaskIntoConstraints = NO;
    profile.tag = 4;
    profile.header.tag = 5;
    profile.content.tag = 6;
    [scroll addSubview:profile];
    
    ProfileBlock *anatomy = [[ProfileBlock alloc]init];
    anatomy.translatesAutoresizingMaskIntoConstraints = NO;
    anatomy.tag = 7;
    anatomy.header.tag = 8;
    anatomy.content.tag = 9;
    [scroll addSubview:anatomy];
    
    ProfileBlock *characteristics = [[ProfileBlock alloc]init];
    characteristics.translatesAutoresizingMaskIntoConstraints = NO;
    characteristics.tag = 10;
    characteristics.header.tag = 11;
    characteristics.content.tag = 12;
    [scroll addSubview:characteristics];
    
    UIImageView *search = [[UIImageView alloc]init];
    search.translatesAutoresizingMaskIntoConstraints = NO;
    search.image = [UIImage imageNamed:@"search.png"];
    search.backgroundColor = [BaseView colorWithHexString:@"FD5055"];
    search.contentMode = UIViewContentModeScaleAspectFill;
    search.tag = 3;
    [scroll addSubview:search];
    
    
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
                                                      constant:topLayoutGuide]];
    
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
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:coverPhoto
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:scroll
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1
                                                          constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:coverPhoto
                                                         attribute:NSLayoutAttributeCenterX
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:scroll
                                                         attribute:NSLayoutAttributeCenterX
                                                        multiplier:1
                                                          constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:coverPhoto
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:scroll
                                                         attribute:NSLayoutAttributeWidth
                                                        multiplier:1
                                                          constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:coverPhoto
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:coverPhoto
                                                         attribute:NSLayoutAttributeHeight
                                                        multiplier:750.0/725.0
                                                          constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                           attribute:NSLayoutAttributeBottom
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:coverPhoto
                                                           attribute:NSLayoutAttributeBottom
                                                          multiplier:1.0/1.125
                                                            constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                           attribute:NSLayoutAttributeRight
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:coverPhoto
                                                           attribute:NSLayoutAttributeRight
                                                          multiplier:1.0/1.125
                                                            constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                           attribute:NSLayoutAttributeWidth
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:coverPhoto
                                                           attribute:NSLayoutAttributeWidth
                                                          multiplier:1.0/3.0
                                                            constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:profPic
                                                           attribute:NSLayoutAttributeWidth
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:profPic
                                                           attribute:NSLayoutAttributeHeight
                                                          multiplier:1/1
                                                            constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:profBlock
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:coverPhoto
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:profBlock
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:coverPhoto
                                                       attribute:NSLayoutAttributeLeft
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:profBlock
                                                       attribute:NSLayoutAttributeRight
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:coverPhoto
                                                       attribute:NSLayoutAttributeRight
                                                      multiplier:1
                                                        constant:0]];
    
//    NSLayoutConstraint *fitBlock = [NSLayoutConstraint constraintWithItem:profBlock
//                                                       attribute:NSLayoutAttributeBottom
//                                                       relatedBy:NSLayoutRelationEqual
//                                                          toItem:description
//                                                       attribute:NSLayoutAttributeBottom
//                                                      multiplier:1
//                                                        constant:0];
//    [scroll addConstraint:fitBlock];
    
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:name
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:coverPhoto
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:843.0/725.0
                                                           constant:0]];
    
    [profBlock addConstraint:[NSLayoutConstraint constraintWithItem:name
                                                          attribute:NSLayoutAttributeLeft
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:profBlock
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:35.0/375.0
                                                           constant:0]];
    
    [profBlock addConstraint:[NSLayoutConstraint constraintWithItem:name
                                                          attribute:NSLayoutAttributeRight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:profBlock
                                                          attribute:NSLayoutAttributeRight
                                                         multiplier:1
                                                           constant:0]];
    
    [profBlock addConstraint:[NSLayoutConstraint constraintWithItem:name
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:name
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:715.0/72.0
                                                           constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:description
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:coverPhoto
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:943.0/725.0
                                                      constant:0]];
    
    [profBlock addConstraint:[NSLayoutConstraint constraintWithItem:description
                                                          attribute:NSLayoutAttributeLeft
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:profBlock
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:35.0/375.0
                                                           constant:0]];
    
    [profBlock addConstraint:[NSLayoutConstraint constraintWithItem:description
                                                          attribute:NSLayoutAttributeRight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:profBlock
                                                          attribute:NSLayoutAttributeRight
                                                         multiplier:1
                                                           constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:search
                                                       attribute:NSLayoutAttributeCenterY
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:coverPhoto
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:search
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:coverPhoto
                                                       attribute:NSLayoutAttributeCenterX
                                                      multiplier:30.0/375.0
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:search
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:coverPhoto
                                                       attribute:NSLayoutAttributeWidth
                                                      multiplier:140.0/750.0
                                                        constant:0]];
    
    [scroll addConstraint:[NSLayoutConstraint constraintWithItem:search
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:search
                                                       attribute:NSLayoutAttributeHeight
                                                      multiplier:1/1
                                                        constant:0]];
}

- (void)addProfileBlockToScrollView:(UIScrollView *)scrollView header:(NSString *)header content:(NSString *)content last:(BOOL)last {
    static int i = 4;
    ProfileBlock *profileBlock = [[ProfileBlock alloc]init];
    profileBlock.translatesAutoresizingMaskIntoConstraints = NO;
    profileBlock.tag = i++;
    profileBlock.header.text = header;
    profileBlock.content.text = content;
    [scroll addSubview:profileBlock];
//    if (i == 7) {
//        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:profileBlock
//                                                           attribute:NSLayoutAttributeTop
//                                                           relatedBy:NSLayoutRelationEqual
//                                                              toItem:(UIImageView *)[scrollView viewWithTag:1]
//                                                           attribute:NSLayoutAttributeBottom
//                                                          multiplier:1
//                                                            constant:0]];
//    } else {
//        [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:profileBlock
//                                                               attribute:NSLayoutAttributeTop
//                                                               relatedBy:NSLayoutRelationEqual
//                                                                  toItem:(ProfileBlock *)[scrollView viewWithTag:i-6]
//                                                               attribute:NSLayoutAttributeBottom
//                                                              multiplier:1
//                                                                constant:1]];
//    }
//    
//    [scrollView addConstraint:[NSLayoutConstraint constraintWithItem:profileBlock
//                                                       attribute:NSLayoutAttributeBottom
//                                                       relatedBy:NSLayoutRelationEqual
//                                                          toItem:profileBlock
//                                                       attribute:NSLayoutAttributeTop
//                                                      multiplier:1
//                                                        constant:200]];
//    
//    
//    [self addConstraint:[NSLayoutConstraint constraintWithItem:profileBlock
//                                                     attribute:NSLayoutAttributeRight
//                                                     relatedBy:NSLayoutRelationEqual
//                                                        toItem:self
//                                                     attribute:NSLayoutAttributeRight
//                                                    multiplier:1
//                                                      constant:0]];
//    
//    [self addConstraint:[NSLayoutConstraint constraintWithItem:profileBlock
//                                                     attribute:NSLayoutAttributeLeft
//                                                     relatedBy:NSLayoutRelationEqual
//                                                        toItem:self
//                                                     attribute:NSLayoutAttributeLeft
//                                                    multiplier:1
//                                                      constant:0]];
//    
//    if(last) {
//        [scroll addConstraint:[NSLayoutConstraint constraintWithItem:scroll
//                                                           attribute:NSLayoutAttributeBottom
//                                                           relatedBy:NSLayoutRelationEqual
//                                                              toItem:profileBlock
//                                                           attribute:NSLayoutAttributeBottom
//                                                          multiplier:1
//                                                            constant:0]];
//    }
}

@end
