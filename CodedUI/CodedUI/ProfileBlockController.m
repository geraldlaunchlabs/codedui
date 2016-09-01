//
//  ProfileBlockController.m
//  CodedUI
//
//  Created by LLDM on 01/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "ProfileBlockController.h"

@interface ProfileBlockController ()

@end

@implementation ProfileBlockController

- (void)loadView {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    profileBlock = [[ProfileBlock alloc]init];
    [profileBlock setupLayout:0];
    
    self.view = profileBlock;
}

- (float)getContentHeight {
    return profileBlock.content.frame.size.height;
}

@end
