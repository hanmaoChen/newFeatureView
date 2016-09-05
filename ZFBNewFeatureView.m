//
//  ZFBNewFeature.m
//  newCharacteristic
//
//  Created by  chenhanmao on 9/5/16.
//  Copyright © 2016  chenhanmao. All rights reserved.
//

#import "ZFBNewFeatureView.h"

@implementation ZFBNewFeatureView
-(void)setImgs:(NSArray *)imgs{
//    接受数据
    _imgs = imgs;
    
//    将数据显示到面板上
    
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
    
}
@end
