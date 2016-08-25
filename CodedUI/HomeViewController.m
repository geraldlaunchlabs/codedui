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

- (void)loadView {
    [super viewDidLoad];
    
    
    [self initView];
    [self getData];
    [self dispDataContent];
    
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [self setUI];
    NSLog(@"\n\n\nappear...");
}

- (void)initView {
    homeView = [[HomeView alloc]init];
    homeView.baseViewDelegate = self;
    homeView.homeViewDelegate = self;
    [homeView setupLayout];
    
    self.view = homeView;
    
    homeView.btn1.imageView.contentMode = UIViewContentModeScaleAspectFit;
    homeView.btn2.imageView.contentMode = UIViewContentModeScaleAspectFit;
    homeView.btn3.imageView.contentMode = UIViewContentModeScaleAspectFit;
    homeView.btn4.imageView.contentMode = UIViewContentModeScaleAspectFit;
    homeView.btn5.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    homeView.picArray = [NSMutableArray array];
    homeView.label1Array = [NSMutableArray array];
    homeView.label2Array = [NSMutableArray array];
}

- (void)getData {
    data = @{@"data":@{
                     @0:@{
                             @"img":@"image1.jpg",
                             @"lbl1":@"POKEMON FOR SALE",
                             @"lbl2":@"Squirtle",
                             @"profPic":@"squirtle.png",
                             @"profPicAdd":@""
                             },
                     @1:@{
                             @"img":@"image2.jpg",
                             @"lbl1":@"POKEMON FOR SALE",
                             @"lbl2":@"Chespin",
                             @"profPic":@"chespin.png",
                             @"profPicAdd":@""
                             },
                     @2:@{
                             @"img":@"image3.jpg",
                             @"lbl1":@"POKEMON FOR SALE",
                             @"lbl2":@"Magmar",
                             @"profPic":@"magmar.png",
                             @"profPicAdd":@""
                             },
                     @3:@{
                             @"img":@"image4.jpg",
                             @"lbl1":@"POKEMON FOR SALE",
                             @"lbl2":@"Vanillite",
                             @"profPic":@"vanillite.png",
                             @"profPicAdd":@""
                             },
                     @4:@{
                             @"img":@"image5.jpg",
                             @"lbl1":@"POKEMON FOR SALE",
                             @"lbl2":@"Butterfree",
                             @"profPic":@"butterfree.png",
                             @"profPicAdd":@""
                             }
                     }
             };
}

- (void)dispDataContent {
    BOOL last = NO;
    for(int i=0; i<[data[@"data"]count]; i++){
        if(i == [data[@"data"]count]-1)
            last = YES;
        NSLog(@"\n\n\n%d",i);
        [homeView addRoomViewOnScrollView:homeView.scroll widthToHeightRatio:750.0/650.0 data:data[@"data"][@(i)] last:last];
    }
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    [self setUI];
}

- (void)setUI {
    
    for(int i=0; i<[data[@"data"]count]; i++) {
        homeView.profPic = homeView.picArray[i];
        homeView.lbl1 = homeView.label1Array[i];
        homeView.lbl2 = homeView.label2Array[i];
        
        homeView.profPic.layer.cornerRadius = homeView.profPic.frame.size.width/2;
        homeView.profPic.layer.borderWidth = homeView.profPic.frame.size.width/25;
        homeView.profPic.layer.borderColor = [UIColor whiteColor].CGColor;
        homeView.profPic.clipsToBounds = YES;
        homeView.lbl1.font = [UIFont systemFontOfSize:homeView.lbl1.frame.size.height-2];
        homeView.lbl2.font = [UIFont systemFontOfSize:homeView.lbl2.frame.size.height-2];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
