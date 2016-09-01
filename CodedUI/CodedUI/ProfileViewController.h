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

@interface ProfileViewController : BaseViewController <ProfileViewDelegate> {
    ProfileView *profileView;
}

@property (strong, nonatomic) IBOutlet NSString *coverPhoto;
@property (strong, nonatomic) IBOutlet NSDictionary *data;

@end
