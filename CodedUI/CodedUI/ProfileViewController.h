//
//  ProfileViewController.h
//  CodedUI
//
//  Created by LLDM on 31/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "BaseViewController.h"
#import "ProfileView.h"
#import <QuartzCore/QuartzCore.h>

@interface ProfileViewController : BaseViewController <ProfileViewDelegate,UIScrollViewDelegate> {
    ProfileView *profileView;
}

@property (nonatomic) IBOutlet NSString *coverPhoto;
@property (nonatomic) IBOutlet NSDictionary *data;

@end
