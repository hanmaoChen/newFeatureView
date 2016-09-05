//
//  ZFBNewFeature.m
//  newCharacteristic
//
//  Created by  chenhanmao on 9/5/16.
//  Copyright © 2016  chenhanmao. All rights reserved.
//

#import "ZFBNewFeatureView.h"
#import "Masonry.h"
@interface ZFBNewFeatureView()

@property(weak,nonatomic)UIScrollView *scrollView;

@end

@implementation ZFBNewFeatureView
-(void)setImgs:(NSArray *)imgs{
//    接受数据
    _imgs = imgs;
    
//    将数据显示到面板上
    
    
//    准备一个初始的frame
    CGRect rect = self.scrollView.bounds;
//    取出宽度
    CGFloat width = rect.size.width;
//    有多少个数据就循环创建多少个UIImageView
    for (int i = 0; i<_imgs.count; i++) {
//        创建UIImageView
        UIImageView *iv = [[UIImageView alloc]init];
//        设置frame
        iv.frame = CGRectOffset(rect, width*i, 0);
        
//        设置图片
        iv.image = _imgs[i];

//        添加到scrollview
        [self.scrollView addSubview:iv];
        
    }
    self.scrollView.contentSize = CGSizeMake(width*(imgs.count+1), 0);
    
    [self createMoreButton];
    
}

#pragma mark - 创建更多的按钮
-(void)createMoreButton{
    for (UIImageView *v in self.scrollView.subviews) {
        
        UIButton *btn = [[UIButton alloc]init];
//        正常状态
        [btn setImage:[UIImage imageNamed:@"common_more_black"] forState:UIControlStateNormal];
//        高亮状态
        [btn setImage:[UIImage imageNamed:@"common_more_white"] forState:UIControlStateHighlighted];
//        添加到父容器
        [v addSubview:btn];
        
//        设置按钮约束
        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.right.equalTo(v).offset(-20);
            make.bottom.equalTo(v).offset(-80);
            make.size.mas_equalTo(CGSizeMake(78, 40));
        }];
    }
    
    
}

/**
 *  重写构造方法
 */
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
//    关掉弹簧效果
    sV.bounces = NO;
//    开启分页
    sV.pagingEnabled = YES;
//    禁用滚动条
    sV.showsVerticalScrollIndicator = NO;
    sV.showsHorizontalScrollIndicator = NO;
    
//    记录变量
    self.scrollView = sV;
    
}
@end
