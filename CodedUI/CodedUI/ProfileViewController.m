//
//  ProfileViewController.m
//  CodedUI
//
//  Created by LLDM on 31/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController () {
    IBOutlet NSLayoutConstraint *_leadingSpaceConstraint;
}

@end

@implementation ProfileViewController

@synthesize data;

- (void)loadView {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    profileView = [[ProfileView alloc]init];
    profileView.baseViewDelegate = self;
    profileView.profileViewDelegate = self;
    [profileView setupLayout:(int)(self.navigationController.navigationBar.frame.size.height)+20];
    
    self.view = profileView;
    
    ((UIImageView *)[profileView.scroll viewWithTag:1]).image = [UIImage imageNamed:data[@"img"]];
    ((UIImageView *)[profileView.scroll viewWithTag:2]).image = [UIImage imageNamed:data[@"profPic"]];
    [profileView addProfileBlockToScrollView:profileView.scroll header:data[@"lbl2"] content:data[@"description"] last:NO];
    [profileView addProfileBlockToScrollView:profileView.scroll header:@"Anatomy" content:data[@"anatomy"] last:NO];
    [profileView addProfileBlockToScrollView:profileView.scroll header:@"Characteristics" content:data[@"characteristics"] last:YES];
}

- (void)viewDidLayoutSubviews {
    UIImageView *Search = (UIImageView *)[profileView.scroll viewWithTag:3];
    Search.layer.cornerRadius = Search.frame.size.width/2;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    UIImageView *Search = (UIImageView *)[profileView.scroll viewWithTag:6];
    Search.layer.cornerRadius = Search.frame.size.width/2;
}

//- (void)adjust

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
