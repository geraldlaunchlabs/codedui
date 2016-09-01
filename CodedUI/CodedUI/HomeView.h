//
//  HomeView.h
//  CodedUI
//
//  Created by LLDM on 23/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseView.h"
#import "BotMenu.h"

@protocol HomeViewDelegate;

@interface HomeView : BaseView <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scroll;
@property (nonatomic, strong) id <HomeViewDelegate> homeViewDelegate;

- (void)addRoomViewOnScrollView:(UIScrollView *)scrollView data:(NSDictionary *)data index:(int)i last:(BOOL)last;

@end

@protocol HomeViewDelegate <NSObject, UIScrollViewDelegate>

- (IBAction)gotoProfile:(id)sender;

@end