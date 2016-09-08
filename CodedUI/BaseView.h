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

@property (nonatomic) id <BaseViewDelegate> baseViewDelegate;

- (void)setupLayout;
+ (UIColor *)colorWithHexString:(NSString *)hex;
+ (UIColor *)averageColorOfImage:(UIImage*)image;
+ (UIColor *)changeOpacity:(UIColor*)color amount:(CGFloat)amount;
+ (CGFloat)getPortraitWidth;
- (BOOL)isPortrait;
+ (void)setUINaviagtionBar:(UINavigationBar *)navBar barTintColor:(UIColor *)barTintColor tintColor:(UIColor *)tintColor translucent:(BOOL)trans;
+ (void)viewMakeRound:(UIView *)image;
+ (void)viewAddBorder:(UIView *)view size:(float)size color:(UIColor *)color clipsToBounds:(BOOL)clip;
+ (void)adjustFontSizeToFitLabel:(UILabel *)label;

@end

@protocol BaseViewDelegate <NSObject>

@end