//
//  HomeView.h
//  CodedUI
//
//  Created by LLDM on 23/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseView.h"

@protocol HomeViewDelegate;
@interface HomeView : BaseView <UIScrollViewDelegate> {
    UIImage *image123;
    
}

@property (nonatomic, readonly) UIView *homeView;
@property (strong, nonatomic) IBOutlet UIImageView *profPic;
@property (strong, nonatomic) IBOutlet UIButton *btn1;
@property (strong, nonatomic) IBOutlet UIButton *btn2;
@property (strong, nonatomic) IBOutlet UIButton *btn3;
@property (strong, nonatomic) IBOutlet UIButton *btn4;
@property (strong, nonatomic) IBOutlet UIButton *btn5;
@property (strong, nonatomic) IBOutlet UILabel *lbl1;
@property (strong, nonatomic) IBOutlet UILabel *lbl2;
@property (strong, nonatomic) IBOutlet UIButton *upcomingBtn;
@property (strong, nonatomic) IBOutlet UIButton *previousBtn;
@property (strong, nonatomic) IBOutlet UIView *botMenu;
@property (strong, nonatomic) IBOutlet UIScrollView *scroll;
@property (strong, nonatomic) IBOutlet UIImageView *img;
@property (strong, nonatomic) IBOutlet UIView *midView;
@property (strong, nonatomic) IBOutlet UIImageView *img2;
@property (strong, nonatomic) IBOutlet UIView *g1;
@property (strong, nonatomic) IBOutlet UIView *g2;
@property (strong, nonatomic) IBOutlet UIView *g3;
@property (strong, nonatomic) IBOutlet UIView *g4;
@property (strong, nonatomic) IBOutlet UIView *btnBar;
@property (strong, nonatomic) IBOutlet UIView *g5;
@property (strong, nonatomic) IBOutlet UIView *g6;
@property (strong, nonatomic) IBOutlet UIView *g7;
@property (strong, nonatomic) IBOutlet UIView *roomView;
@property (strong, nonatomic) IBOutlet NSMutableArray *picArray;
@property (strong, nonatomic) IBOutlet NSMutableArray *label1Array;
@property (strong, nonatomic) IBOutlet NSMutableArray *label2Array;

@property (nonatomic, strong) id <HomeViewDelegate> homeViewDelegate;

- (void) addRoomViewOnScrollView:(UIScrollView *)scrollView widthToHeightRatio:(float)ratio data:(NSDictionary *)data last:(BOOL)last;

@end

@protocol HomeViewDelegate <NSObject, UIScrollViewDelegate>



@end