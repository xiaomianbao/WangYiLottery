//
//  TXTabBar.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/3.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXTabBar.h"
#import "TXTabBarButton.h"

@interface  TXTabBar()

@property (nonatomic ,weak)  UIButton * selectedButton ;

@end
@implementation TXTabBar


- (void)layoutSubviews
{
    [super layoutSubviews];
    
    int count = self.subviews.count ;
    for (int i = 0 ; i < count;  i++) {
        
        UIButton *button =  self.subviews[i];
        CGFloat buttonY =0 ;
        CGFloat buttonW =self.frame.size.width/count ;
        CGFloat buttonH = self.frame.size.height;
        CGFloat buttonX = buttonW *i;
        
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
    }
    
}

- (void) buttonClick:(UIButton *) button
{
    self.selectedButton.selected  = NO ;
    button.selected = YES ;
    self.selectedButton = button ;
    
    if ([self.delegate respondsToSelector:@selector(tabBar:didIiemSelected:)]) {
        [self.delegate tabBar:self didIiemSelected:button];
    }
}

- (void) addTabButtonWithName :(NSString *) name selectedName :(NSString *) selectedName
{
    
    TXTabBarButton * button = [[TXTabBarButton alloc] init];
    //默认背景
    [button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    //选中
    [button setBackgroundImage:[UIImage imageNamed:selectedName] forState:UIControlStateSelected];
    //添加点击事件
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
    
    //设置tag
    button.tag = self.subviews.count  ;
    
    if (button.tag == 0) {
        [self buttonClick:button];
    }
    
    [self addSubview:button];
   
}
@end










