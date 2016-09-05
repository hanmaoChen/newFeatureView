//
//  ZFBNewFeature.m
//  newCharacteristic
//
//  Created by  chenhanmao on 9/5/16.
//  Copyright © 2016  chenhanmao. All rights reserved.
//

#import "ZFBNewFeatureView.h"
@interface ZFBNewFeatureView()

@property(weak,nonatomic)UIScrollView *scrollView;

@end

@implementation ZFBNewFeatureView
-(void)setImgs:(NSArray *)imgs{
//    接受数据
    _imgs = imgs;
    
//    将数据显示到面板上
//    有多少个数据就循环创建多少个UIImageView
    for (int i = 0; i<_imgs.count; i++) {
//        创建UIImageView
        UIImageView *iv = [[UIImageView alloc]initWithFrame:self.scrollView.bounds];
//        添加图片
        iv.image = _imgs[i];
//        添加到scrollview
        [self.scrollView addSubview:iv];
        
    }
    
}


-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        [self setupUI];
    }
    return self;
}
#pragma mark - 初始化控件
-(void)setupUI{
//    创建UIScrollView
    UIScrollView *sV = [[UIScrollView alloc]initWithFrame:self.bounds];
    
    [self addSubview:sV];
    
//    记录变量
    self.scrollView = sV;
    
}
@end
