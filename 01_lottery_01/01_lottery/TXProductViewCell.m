//
//  TXProductViewCell.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/6.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXProductViewCell.h"
#import "TXProduct.h"
@interface TXProductViewCell ()

@property (nonatomic ,weak) UIImageView * iconView ;
@property (nonatomic ,weak) UILabel * titleView ;

@end

@implementation TXProductViewCell



//- (instancetype)init
//{
//    if (self = [super init]) {
//        
//        NSLog(@"-=====");
//        
//        UIImageView *iconView = [[UIImageView alloc] init];
//        
//        [self.contentView addSubview:iconView];
//        self.iconView = iconView ;
//        
//        
//        UILabel *titleView = [[UILabel alloc] init];
//        [self.contentView addSubview:titleView];
//        titleView.textAlignment =  NSTextAlignmentCenter;
//        titleView.font = [UIFont systemFontOfSize:13];
//        self.titleView = titleView ;
//    }
//    
//    return self ;
//}


- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        UIImageView *iconView = [[UIImageView alloc] init];
        
        [self.contentView addSubview:iconView];
        
      
        
        self.iconView = iconView ;
        
        
        UILabel *titleView = [[UILabel alloc] init];
        [self.contentView addSubview:titleView];
        titleView.textAlignment =  NSTextAlignmentCenter;
        titleView.font = [UIFont systemFontOfSize:13];
        self.titleView = titleView ;

    }
    
    return self ;
}

- (void)setProduct:(TXProduct *)product
{
    
    //NSLog(@"-==%@==",product.icon);

    _product = product ;
    
    self.iconView.image = [UIImage imageNamed:product.icon];
    self.titleView.text = product.title ;
}

- (void)layoutSubviews
{

    CGFloat padding = 10 ;
    self.iconView.layer.cornerRadius = 8;
    self.iconView.clipsToBounds = YES ;
    CGFloat iconX =  padding;
    CGFloat iconY = 0;
    CGFloat iconW = self.frame.size.width - padding*2;
    CGFloat iconH = iconW;
    
    self.iconView.frame = CGRectMake(iconX, iconY, iconW, iconH);
    
    CGFloat titleX = 0;
    CGFloat titleY = iconH;
    CGFloat titleW = self.frame.size.width;
    CGFloat titleH = self.frame.size.height - iconH;
    
    self.titleView.frame = CGRectMake(titleX, titleY, titleW, titleH);
}
@end
