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
//    vNew.backgroundColor = [UIColor blueColor];
    
//    将图片数组传递给新特性界面
    vNew.imgs = [self getNewFeatureImg];
    
//    将新特性界面添加到跟视图
    [self.view addSubview:vNew];
    
}

#pragma mark - 提供图片数组的方法
-(NSArray *)getNewFeatureImg{
    
    int count = 4;
//    根据图片的数量循环创建图片的对象
    NSMutableArray *imgMArr = [NSMutableArray array];
    for (int i = 0; i<count; i++) {
        UIImage *img = [UIImage imageNamed:[@"common_h" stringByAppendingFormat:@"%d",i+1]];
        [imgMArr addObject:img];
                        
    }
    return imgMArr;
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
