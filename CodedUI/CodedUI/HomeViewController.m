//
//  HomeViewController.m
//  CodedUI
//
//  Created by LLDM on 23/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "HomeViewController.h"
#import "ProfileViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)loadView {
    [super viewDidLoad];
    [self initView];
    [self dispDataContent:[self getData]];
}

- (void)initView {
    homeView = [HomeView new];
    homeView.baseViewDelegate = self;
    homeView.homeViewDelegate = self;
    [homeView setupLayout];
    
    self.view = homeView;
}

- (NSArray *)getData {
    NSArray *data = [NSArray arrayWithObjects:
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"image1.jpg",@"img",
                        @"POKEMON FOR SALE",@"lbl1",
                        @"Squirtle",@"lbl2",
                        @"squirtle.png",@"profPic",
                        @"Squirtle (ゼニガメ Zenigame) is a Water-type Pokémon introduced in Generation I. It evolves into Wartortle starting at level 16. It is one of the three Starter Pokémon that can be chosen in the Kanto region.",@"description",
                        @"Squirtle is a small, light-blue Pokémon with an appearance similar to that of a turtle. Like turtles, Squirtle has a shell that covers its body with holes that allow its limbs, tail, and head to be exposed. Unlike a turtle, Squirtle is ordinarily bipedal.",@"anatomy",
                        @"Its shell is highly sturdy, and it can hide itself within its shell from physical attacks.",@"characteristics",
                        nil],
                       
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"image2.jpg",@"img",
                        @"POKEMON FOR SALE",@"lbl1",
                        @"Chespin",@"lbl2",
                        @"chespin.png",@"profPic",
                        @"Chespin (ハリマロン Harimaron) is a Grass-type Pokémon introduced in Generation VI. It is the Grass-type Starter of Kalos.",@"description",
                        @"Chespin seems to resemble a porcupine or hedgehog. It has a tough spiky green chestnut-like shell covering its head and back. Chespin has brown fur, a large pink triangle-shaped nose, black oval-shaped eyes, and a toothy grin. It has sharp claws on its large feet, and an orange tip on the end of its pointed green tail.",@"anatomy",
                        @"Despite having a curious nature that tends to get it in trouble, Chespin keeps an optimistic outlook and doesn't worry about small details.",@"characteristics",
                        nil],
                       
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"image3.jpg",@"img",
                        @"POKEMON FOR SALE",@"lbl1",
                        @"Magmar",@"lbl2",
                        @"magmar.png",@"profPic",
                        @"Magmar (Japanese: ブーバー Buubaa) is a Fire-type Pokémon introduced in Generation I.",@"description",
                        @"Magmar's body is designed to let it camouflage in fire, so it is mainly red and yellow all over. It has a flame pattern on its torso, and a fire on its tail, similar to Charmander and Chimchar (though Chimchar's fire actually is its tail). It has a large beak that can spit out fire thus giving it the species name the 'Spitfire' Pokémon.",@"anatomy",
                        @"Magmar have the ability Flame Body. Flame Body has a 30% chance of burning a foe that physically attacks Magmar. Its body temperature is 2,200 Degrees Fahrenheit. Its body shimmers like the sun and its breath can cause miniature heat waves around it.",@"characteristics",
                        nil],
                       
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"image4.jpg",@"img",
                        @"POKEMON FOR SALE",@"lbl1",
                        @"Vanillite",@"lbl2",
                        @"vanillite.png",@"profPic",
                        @"Vanillite (Japanese: バニプッチ Banipucchi) is an Ice-type Pokémon introduced in Generation V.",@"description",
                        @"Vanillite is a small Pokémon that resembles an ice cream cone with a scoop of vanilla ice cream for a head. Vanillite's head is covered with white snow that resembles a swirled scoop of vanilla ice cream. Beneath the snowy cover, Vanillite's head is made of the same icy material as its light blue, semi-translucent body. It is possible for the snowy material covering its head to melt if exposed to high temperatures. Vanillite has light blue ovular eyes with dark blue pupils, a small dark-blue mouth, and a diamond-shaped ice crystal on each cheek. Its small body is sprinkled with particles of ice, and has short icy arms. The cylindrical bottom part of its body resembles a small ice cream cone made of translucent bluish ice.",@"anatomy",
                        @"Vanillite can create small snowstorms by producing ice crystals in the atmosphere with its freezing breath.",@"characteristics",
                        nil],
                       
                       [NSDictionary dictionaryWithObjectsAndKeys:
                        @"image5.jpg",@"img",
                        @"POKEMON FOR SALE",@"lbl1",
                        @"Butterfree",@"lbl2",
                        @"butterfree.png",@"profPic",
                        @"Butterfree (Japanese: バタフリー Batafurii) is a Bug/Flying-type Pokémon introduced in Generation I.",@"description",
                        @"Butterfree is an insect-like Pokémon appearing as a large butterfly. Butterfree has a large purple body with light blue limbs and a nose with very small fangs. Its eyes are quite large in proportion to its head and are a red color. Butterfree's large wings simply appear as black and white butterfly wings. The gender difference is the female has purple on the bottom of its wings and the male doesn't.",@"anatomy",
                        @"Regular Butterfree have the ability Compoundeyes which raises its accuracy rating by 30%. Outside of battle, Compound eyes will raise the chances of finding a Pokémon with an item if the user is in the lead slot of the party.\n\nButterfree befriended within the Dream World have the Tinted Lens ability, which doubles the power of \"not very effective\" moves.\n\nIn battle, it flaps its wings at high speed to release highly toxic dust into the air. Its wings are very helpful in spreading the Poisonpowder and Stun Spore.",@"characteristics",
                        nil],
                       nil];
    return data;
}

- (void)dispDataContent:(NSArray *)data {
    BOOL last = NO;
    for(int i=0; i<[data count]; i++){
        if(i == [data count]-1) last = YES;
        
        [homeView addRoomViewOnScrollView:homeView.scroll data:data[i] index:i last:last];
    }
}

- (void)viewDidAppear:(BOOL)animated {
    [BaseView setUINaviagtionBar:self.navigationController.navigationBar
                    barTintColor:[BaseView colorWithHexString:@"FD5055"]
                       tintColor:[UIColor whiteColor]
                     translucent:NO];
    
    [self adjustRoomViewSubviews];
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    [self adjustRoomViewSubviews];
}

- (void)adjustRoomViewSubviews {
    int i = 1;
    UIImageView *profPic;
    
    while([homeView.scroll viewWithTag:i++]) {
        profPic = [homeView.scroll viewWithTag:i++];
        [BaseView viewMakeRound:profPic];
        [BaseView viewAddBorder:profPic size:profPic.frame.size.width/25 color:[UIColor whiteColor] clipsToBounds:YES];
        
        [BaseView adjustFontSizeToFitLabel:[homeView.scroll viewWithTag:i++]];
        [BaseView adjustFontSizeToFitLabel:[homeView.scroll viewWithTag:i++]];
    }
}

#pragma mark - Go to Profile View

- (IBAction)gotoProfile:(id)sender {
    int i = (int)(-1+(((UIButton *)sender).tag+3)/4);
    
    ProfileViewController *push = [ProfileViewController new];
    push.data = [self getData][i];
    
    [self.navigationController pushViewController:push animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
