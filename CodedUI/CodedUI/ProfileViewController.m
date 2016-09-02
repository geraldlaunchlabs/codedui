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
    profileView = [[ProfileView alloc]init];
    profileView.baseViewDelegate = self;
    profileView.profileViewDelegate = self;
    [profileView setupLayout];
    
    self.view = profileView;
    
    ((UIImageView *)[profileView viewWithTag:1]).image = [UIImage imageNamed:data[@"img"]];
    ((UIImageView *)[profileView viewWithTag:2]).image = [UIImage imageNamed:data[@"profPic"]];
    [profileView addProfileBlockToScrollView:profileView.scroll header:data[@"lbl2"] content:data[@"description"] last:NO];
    [profileView addProfileBlockToScrollView:profileView.scroll header:@"Anatomy" content:data[@"anatomy"] last:NO];
    [profileView addProfileBlockToScrollView:profileView.scroll header:@"Characteristics" content:data[@"characteristics"] last:YES];
}

- (void)viewDidLayoutSubviews {
    profileView.scroll.delegate = self;
    self.navigationController.navigationBar.barTintColor = [BaseView averageColorOfImage:((UIImageView *)[profileView viewWithTag:1]).image];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    
    UIButton *Search = (UIButton *)[profileView.scroll viewWithTag:3];
    Search.layer.cornerRadius = Search.frame.size.width/2;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    profileView.scroll.delegate = self;
    self.navigationController.navigationBar.barTintColor = [BaseView averageColorOfImage:((UIImageView *)[profileView viewWithTag:1]).image];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    
    UIButton *Search = (UIButton *)[profileView.scroll viewWithTag:3];
    Search.layer.cornerRadius = Search.frame.size.width/2;
}

//- (void)adjust

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
