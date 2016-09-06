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
        
        header = [[UILabel alloc]init];
        header.translatesAutoresizingMaskIntoConstraints = NO;
        header.font = [UIFont systemFontOfSize:[BaseView getPortraitWidth]/(750.0/70.0)];
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
                                                          constant:[BaseView getPortraitWidth]/15.0]];
        
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:header
                                                              attribute:NSLayoutAttributeLeft
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeLeft
                                                             multiplier:1
                                                               constant:[BaseView getPortraitWidth]/(750.0/35.0)]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:header
                                                              attribute:NSLayoutAttributeRight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeRight
                                                             multiplier:1
                                                               constant:0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:header
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:nil
                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                             multiplier:1
                                                               constant:([BaseView getPortraitWidth]/(750.0/80.0))]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:content
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:header
                                                         attribute:NSLayoutAttributeBottom
                                                        multiplier:1
                                                          constant:[BaseView getPortraitWidth]/30.0]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:content
                                                              attribute:NSLayoutAttributeLeft
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeLeft
                                                             multiplier:1
                                                               constant:[BaseView getPortraitWidth]/(750.0/35.0)]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:content
                                                              attribute:NSLayoutAttributeRight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeRight
                                                             multiplier:1
                                                               constant:-[BaseView getPortraitWidth]/(750.0/35.0)]];
    }
    return self;
}


@end
