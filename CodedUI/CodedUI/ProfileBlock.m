//
//  ProfileBlock.m
//  CodedUI
//
//  Created by LLDM on 01/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "ProfileBlock.h"

@implementation ProfileBlock

@synthesize header,content;

- (id)init
{
    self = [super init];
    if (self) {
    
        CGFloat screenWidth = [[UIScreen mainScreen]bounds].size.width;
        
        self.backgroundColor = [UIColor whiteColor];
        
        header = [[UILabel alloc]init];
        header.translatesAutoresizingMaskIntoConstraints = NO;
        header.font = [UIFont systemFontOfSize:screenWidth/(750/70)];
        header.text = @"Squirtle";
        header.tag = 1;
        [self addSubview:header];
        
        content = [[UITextView alloc]init];
        content.translatesAutoresizingMaskIntoConstraints = NO;
        content.font = [UIFont systemFontOfSize:header.font.pointSize/2];
        content.textAlignment = NSTextAlignmentJustified;
        content.scrollEnabled = NO;
        content.editable = NO;
        content.text = @"Squirtle (ゼニガメ Zenigame) is a Water-type Pokémon introduced in Generation I. It evolves into Wartortle starting at level 16. It is one of the three Starter Pokémon that can be chosen in the Kanto region.";
        content.tag = 2;
        [self addSubview:content];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:header
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1
                                                          constant:screenWidth/15]];
        
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:header
                                                              attribute:NSLayoutAttributeLeft
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:35.0/375.0
                                                               constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:header
                                                              attribute:NSLayoutAttributeRight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeRight
                                                             multiplier:1
                                                               constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:header
                                                              attribute:NSLayoutAttributeWidth
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:header
                                                              attribute:NSLayoutAttributeHeight
                                                             multiplier:715.0/72.0
                                                               constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:content
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1
                                                          constant:screenWidth/5]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:content
                                                              attribute:NSLayoutAttributeLeft
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:35.0/375.0
                                                               constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:content
                                                              attribute:NSLayoutAttributeRight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:(750-35)/375.0
                                                               constant:0]];
    }
    return self;
}


@end
