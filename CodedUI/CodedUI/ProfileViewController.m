//
//  ProfileViewController.m
//  CodedUI
//
//  Created by LLDM on 31/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

@synthesize data;

- (void)loadView {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    [BaseView setUINaviagtionBar:self.navigationController.navigationBar
                    barTintColor:[BaseView averageColorOfImage:[UIImage imageNamed:data[@"img"]]]
                       tintColor:[UIColor whiteColor]
                     translucent:NO];
    
    profileView = [ProfileView new];
    profileView.baseViewDelegate = self;
    profileView.profileViewDelegate = self;
    profileView.scroll.delegate = self;
    
    [profileView setupLayout];
    
    self.view = profileView;
    
    ((UIImageView *)[profileView viewWithTag:1]).image = [UIImage imageNamed:data[@"img"]];
    
    [profileView addProfileBlockToScrollView:profileView.scroll header:data[@"lbl2"] content:data[@"description"] last:NO];
    [profileView addProfileBlockToScrollView:profileView.scroll header:@"Anatomy" content:data[@"anatomy"] last:NO];
    [profileView addProfileBlockToScrollView:profileView.scroll header:@"Characteristics" content:data[@"characteristics"] last:YES];
    
    ((UIImageView *)[profileView.scroll viewWithTag:2]).image = [UIImage imageNamed:data[@"profPic"]];
}

- (void)viewDidLayoutSubviews {
    UIButton *Search = (UIButton *)[profileView.scroll viewWithTag:3];
    Search.layer.cornerRadius = Search.frame.size.width/2;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    UIButton *Search = (UIButton *)[profileView.scroll viewWithTag:3];
    Search.layer.cornerRadius = Search.frame.size.width/2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
