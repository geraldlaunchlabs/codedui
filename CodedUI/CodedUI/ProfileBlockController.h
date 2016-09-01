//
//  ProfileBlockController.h
//  CodedUI
//
//  Created by LLDM on 01/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "BaseViewController.h"
#import "ProfileBlock.h"

@interface ProfileBlockController : BaseViewController {
    ProfileBlock *profileBlock;
}

@property (strong, nonatomic) IBOutlet UILabel *header;
@property (strong, nonatomic) IBOutlet UITextView *content;

@end
