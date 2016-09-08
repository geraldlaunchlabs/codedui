//
//  ProfileView.h
//  CodedUI
//
//  Created by LLDM on 31/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseView.h"
#import "BotMenu.h"
#import "ProfileBlock.h"

@protocol ProfileViewDelegate;

@interface ProfileView : BaseView<UIScrollViewDelegate>

@property (nonatomic) IBOutlet UIScrollView *scroll;
@property (nonatomic) id <ProfileViewDelegate> profileViewDelegate;
- (void)addProfileBlockToScrollView:(UIScrollView *)scrollView header:(NSString *)header content:(NSString *)content last:(BOOL)last;

@end

@protocol ProfileViewDelegate <NSObject, UIScrollViewDelegate>

@end