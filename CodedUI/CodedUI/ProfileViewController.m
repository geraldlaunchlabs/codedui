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
    [profileView addProfileBlockToScrollView:profileView.scroll header:@"Characteristics" content:data[@"characteristics"] last:NO];
}

- (void)viewDidLayoutSubviews {
    
    UILabel *Name = (UILabel *)[profileView.scroll viewWithTag:4];
    Name.font = [UIFont systemFontOfSize:Name.frame.size.height-2];
    
    UITextView *Description = ((UITextView *)[profileView.scroll viewWithTag:5]);
    Description.font = [UIFont systemFontOfSize:(Name.frame.size.height-2)/2];
    CGFloat width = Description.frame.size.width;
    CGSize newSize = [Description sizeThatFits:CGSizeMake(width, MAXFLOAT)];
    CGRect newFrame = Description.frame;
    newFrame.size = CGSizeMake(fmaxf(newSize.width,width),newSize.height);
    Description.frame = newFrame;
    
    UIImageView *Search = (UIImageView *)[profileView.scroll viewWithTag:3];
    Search.layer.cornerRadius = Search.frame.size.width/2;
    

//    [profileView.scroll addConstraint:[NSLayoutConstraint constraintWithItem:(UIView *)[profileView.scroll viewWithTag:401]
//                                                                   attribute:NSLayoutAttributeBottom
//                                                                   relatedBy:NSLayoutRelationEqual
//                                                                      toItem:((UITextView *)[profileView.scroll viewWithTag:4])
//                                                                   attribute:NSLayoutAttributeBottom
//                                                                  multiplier:1
//                                                                    constant:profileView.frame.size.width/12.5]];
    
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    UILabel *Name = (UILabel *)[profileView.scroll viewWithTag:3];
    Name.font = [UIFont systemFontOfSize:Name.frame.size.height-2];
    
    UITextView *Description = ((UITextView *)[profileView.scroll viewWithTag:4]);
    Description.font = [UIFont systemFontOfSize:(Name.frame.size.height-2)/2];
    CGFloat fixedWidth = Description.frame.size.width;
    CGSize newSize = [Description sizeThatFits:CGSizeMake(fixedWidth, MAXFLOAT)];
    CGRect newFrame = Description.frame;
    newFrame.size = CGSizeMake(fmaxf(newSize.width, fixedWidth), newSize.height);
    Description.frame = newFrame;
    
    UIImageView *Search = (UIImageView *)[profileView.scroll viewWithTag:5];
    Search.layer.cornerRadius = Search.frame.size.width/2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
