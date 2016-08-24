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
}

- (void)getData {
    data = @{@"data":@{
                     @"data":@{
                             @"img":@"img1.jpg",
                             @"lbl1":@"ROOMS ONLY -House & Heated Pool",
                             @"lbl2":@"Southampton, US • May 29 to May 31 • 5 guests",
                             @"profPic":@"squirtle.png"
                             },
                     @"data":@{
                             @"img":@"img2.jpg",
                             @"lbl1":@"ROOMS ONLY -House & Heated Pool",
                             @"lbl2":@"Southampton, US • May 29 to May 31 • 5 guests",
                             @"profPic":@"bulbasaur.png"
                             },
                     @"data":@{
                             @"img":@"img3.jpg",
                             @"lbl1":@"ROOMS ONLY -House & Heated Pool",
                             @"lbl2":@"Southampton, US • May 29 to May 31 • 5 guests",
                             @"profPic":@"oddish.png"
                             },
                     @"data":@{
                             @"img":@"img4.jpg",
                             @"lbl1":@"ROOMS ONLY -House & Heated Pool",
                             @"lbl2":@"Southampton, US • May 29 to May 31 • 5 guests",
                             @"profPic":@"squirtle.png"
                             },
                     @"data":@{
                             @"img":@"img5.jpg",
                             @"lbl1":@"ROOMS ONLY -House & Heated Pool",
                             @"lbl2":@"Southampton, US • May 29 to May 31 • 5 guests",
                             @"profPic":@"bulbasaur.png"
                             }
                     }
             };
}

- (void)dispDataContent {
    for(int i=0; i<[data[@"data"]count]; i++){
        NSLog(@"\n\n\n%@",data[@"data"][@"data"][2][@"img"]);
        
        
    }
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    [self setUI];
}

- (void)setUI {
    homeView.profPic.layer.cornerRadius = homeView.profPic.frame.size.width/2;
    homeView.profPic.layer.borderWidth = homeView.profPic.frame.size.width/50;
    homeView.profPic.layer.borderColor = [UIColor whiteColor].CGColor;
    homeView.profPic.clipsToBounds = YES;
    homeView.lbl1.font = [UIFont systemFontOfSize:homeView.lbl1.frame.size.height-2];
    homeView.lbl2.font = [UIFont systemFontOfSize:homeView.lbl2.frame.size.height-2];
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
