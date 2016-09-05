//
//  ZFBMainViewController.m
//  newCharacteristic
//
//  Created by  chenhanmao on 9/5/16.
//  Copyright © 2016  chenhanmao. All rights reserved.
//

#import "ZFBMainViewController.h"
#import "Masonry.h"
#import "ZFBNewFeatureView.h"
@interface ZFBMainViewController ()

@end

@implementation ZFBMainViewController

- (void)viewDidLoad{
    [super viewDidLoad];
//    初始化主界面
    [self setupUI];
    
//    显示新特性界面
    [self showNewFeatureView];
    
}



#pragma mark - 显示新特性界面
-(void)showNewFeatureView{
//    创建新特性界面
    ZFBNewFeatureView *vNew = [[ZFBNewFeatureView alloc]initWithFrame:self.view.bounds ];
    vNew.backgroundColor = [UIColor blueColor];
    [self.view addSubview:vNew];
    
    
}


#pragma mark - 初始化主界面
-(void)setupUI{
    
    UIImageView *imgV = [[UIImageView alloc]init];
    
    imgV.image = [UIImage imageNamed:@"cozy-control-car"];
    
    [self.view addSubview:imgV];
    
//    调整大小
    imgV.contentMode = UIViewContentModeScaleAspectFit;

//    添加约束
[imgV mas_makeConstraints:^(MASConstraintMaker *make) {
    
    make.edges.mas_equalTo(UIEdgeInsetsMake(20, 20, 20, 20));
}];
    
}
@end
