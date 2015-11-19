//
//  ViewController.m
//  admobTest01
//
//  Created by tikomo on 2015/01/22.
//  Copyright (c) 2015年 tikomo. All rights reserved.
//

#import "ViewController.h"
#import "GADBannerView.h"


@interface ViewController () {
    GADBannerView *banner;
}

@property (weak, nonatomic) IBOutlet UIView *bannerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // iPhone6, 6 plus の場合このままだと右にグレーがでてしまう
    // banner = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
    
    // この方法だと大丈夫
    banner = [[GADBannerView alloc] initWithAdSize:GADAdSizeFullWidthPortraitWithHeight(GAD_SIZE_320x50.height)];
    
    banner.adUnitID = @"ca-app-pub-5768712291641162/5041310539";
    banner.rootViewController = self;
    [self.bannerView addSubview:banner];
    
    [banner loadRequest:[GADRequest request]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
