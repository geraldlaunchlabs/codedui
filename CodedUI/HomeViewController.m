//
//  HomeViewController.m
//  CodedUI
//
//  Created by LLDM on 23/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize homeView;

- (void)loadView {
    [super viewDidLoad];
    [self initView];
    [self dispDataContent:[self getData]];
    
    // Do any additional setup after loading the view.
}

- (IBAction)toggleSearch:(id)sender
{
    // do something or handle Search Button Action.
}

- (void)initView {
    homeView = [[HomeView alloc]init];
    homeView.baseViewDelegate = self;
    homeView.homeViewDelegate = self;
    [homeView setupLayout:(int)(self.navigationController.navigationBar.frame.size.height)];
    
    self.view = homeView;
}

- (NSArray *)getData {
    NSArray *data = [NSArray arrayWithObjects:
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"image1.jpg",@"img",
                        @"POKEMON FOR SALE",@"lbl1",
                        @"Squirtle",@"lbl2",
                        @"squirtle.png",@"profPic",
                        nil],
                       
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"image2.jpg",@"img",
                        @"POKEMON FOR SALE",@"lbl1",
                        @"Chespin",@"lbl2",
                        @"chespin.png",@"profPic",
                        nil],
                       
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"image3.jpg",@"img",
                        @"POKEMON FOR SALE",@"lbl1",
                        @"Magmar",@"lbl2",
                        @"magmar.png",@"profPic",
                        nil],
                       
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"image4.jpg",@"img",
                        @"POKEMON FOR SALE",@"lbl1",
                        @"Vanillite",@"lbl2",
                        @"vanillite.png",@"profPic",
                        nil],
                       
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"image5.jpg",@"img",
                        @"POKEMON FOR SALE",@"lbl1",
                        @"Butterfree",@"lbl2",
                        @"butterfree.png",@"profPic",
                        nil],
                       nil];
    return data;
}

- (void)dispDataContent:(NSArray *)data {
    BOOL last = NO;
    for(int i=0; i<[data count]; i++){
        if(i == [data count]-1) last = YES;
        
        [homeView addRoomViewOnScrollView:homeView.scroll widthToHeightRatio:750.0/650.0 data:data[i] index:i last:last];
    }
}

- (void)viewDidAppear:(BOOL)animated {
    [self adjustRoomViewSubviews];
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    [self adjustRoomViewSubviews];
}

- (void)adjustRoomViewSubviews {
    int i = 1;
    UIImageView *profPic;
    UILabel *lbl;
    
    while([homeView.scroll viewWithTag:i++]) {
        profPic = [homeView.scroll viewWithTag:i++];
        profPic.layer.cornerRadius = profPic.frame.size.width/2;
        profPic.layer.borderWidth = profPic.frame.size.width/25;
        profPic.layer.borderColor = [UIColor whiteColor].CGColor;
        profPic.clipsToBounds = YES;
        
        
        
        [UIView animateKeyframesWithDuration:2.0 delay:0.0 options:UIViewKeyframeAnimationOptionAutoreverse | UIViewKeyframeAnimationOptionRepeat animations:^{
            [UIView addKeyframeWithRelativeStartTime:0.0 relativeDuration:0.5 animations:^{
                profPic.transform = CGAffineTransformMakeScale(3, 3);
            }];
            [UIView addKeyframeWithRelativeStartTime:0.5 relativeDuration:0.5 animations:^{
                profPic.transform = CGAffineTransformMakeScale(1, 1);
            }];
        } completion:nil];
        
        
        
        lbl = [homeView.scroll viewWithTag:i++];
        lbl.font = [UIFont systemFontOfSize:lbl.frame.size.height-2];
        lbl = [homeView.scroll viewWithTag:i++];
        lbl.font = [UIFont systemFontOfSize:lbl.frame.size.height-2];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
