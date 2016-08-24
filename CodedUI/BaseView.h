//
//  BaseView.h
//  CodedUI
//
//  Created by LLDM on 23/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BaseViewDelegate;

@interface BaseView : UIView

@property (nonatomic, strong) id <BaseViewDelegate> baseViewDelegate;

- (void)setupLayout;
+ (UIColor *)colorWithHexString:(NSString *)hex;
+ (UIView *)createViewWithRect:(CGRect)rect;

@end

@protocol BaseViewDelegate <NSObject>

@end