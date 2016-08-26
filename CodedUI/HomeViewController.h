//
//  HomeViewController.h
//  CodedUI
//
//  Created by LLDM on 23/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "BaseViewController.h"
#import "HomeView.h"
#import <QuartzCore/QuartzCore.h>

@interface HomeViewController : BaseViewController <HomeViewDelegate> {
    //HomeView *homeView;
}

@property (strong, nonatomic) IBOutlet HomeView *homeView;

@end
