//
//  BaseView.m
//  CodedUI
//
//  Created by LLDM on 23/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView
@synthesize baseViewDelegate = _baseViewDelegate;

#define MIN_RGB_STRING_LENGTH 6
#define RED_VALUE_INDEX 0
#define GREEN_VALUE_INDEX 2
#define BLUE_VALUE_INDEX 4
#define RGB_VALUE_LENGTH 2

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setupLayout{
    
}

+ (UIColor *)colorWithHexString:(NSString *)hex{
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 characters
    if ([cString length] < MIN_RGB_STRING_LENGTH){
        return [UIColor grayColor];
    }
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]){
        cString = [cString substringFromIndex:2];
    }
    
    if ([cString length] != MIN_RGB_STRING_LENGTH){
        return  [UIColor grayColor];
    }
    
    // Separate into r, g, b substrings
    NSRange range;
    range.length = RGB_VALUE_LENGTH;
    range.location = RED_VALUE_INDEX;
    NSString *rString = [cString substringWithRange:range];
    range.location = GREEN_VALUE_INDEX;
    NSString *gString = [cString substringWithRange:range];
    range.location = BLUE_VALUE_INDEX;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}

+ (UIButton *)createButtonWithPath:(NSString *)path withRect:(CGRect)rect{
    UIImage *image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:path ofType:nil]];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    if(rect.size.width <= 0 && rect.size.height <= 0){
        btn.frame = CGRectMake(rect.origin.x, rect.origin.y, image.size.width, image.size.height);
    }
    else {
        btn.frame = CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    }
    
    [btn setImage:image forState:UIControlStateNormal];
    btn.exclusiveTouch = YES;
    return btn;
}

+ (UIImageView *)createImageWithPath:(NSString *)path withRect:(CGRect)rect{
    
    UIImage *image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:path ofType:nil]];
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)];
    
    if(rect.size.width <= 0 && rect.size.height <= 0){
        imgView.frame = CGRectMake(rect.origin.x, rect.origin.y, image.size.width, image.size.height);
    }
    
    imgView.image = image;
    imgView.clipsToBounds = YES;
    imgView.contentMode = UIViewContentModeScaleAspectFill;
    return imgView;
}

@end
