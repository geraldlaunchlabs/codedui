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
@property (nonatomic, strong) id <HomeViewDelegate> homeViewDelegate;

@end

@protocol HomeViewDelegate <NSObject, UIScrollViewDelegate>

@end