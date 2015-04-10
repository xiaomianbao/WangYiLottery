//
//  TXTabBarController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/3.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
// 随便增加了一点注释

#import "TXTabBarController.h"
#import "TXTabBar.h"

@interface TXTabBarController () <TXTabBarDelegate>

@end

@implementation TXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
      //1.自定义tabBar
    
    TXTabBar *myTabBar = [[TXTabBar alloc] init];
    myTabBar.frame = self.tabBar.bounds;
    //2.添加进自带的tabBar
    [self.tabBar addSubview:myTabBar];

  
    //添加tabBarButton
    for (int i = 0 ; i <self.viewControllers.count; i++) {
        
        NSString *name = [NSString stringWithFormat:@"TabBar%d",i+1];
        NSString *selectedName = [NSString stringWithFormat:@"%@Sel",name];
        
        [myTabBar addTabButtonWithName:name selectedName:selectedName];
    }
    
    //设置代理
    myTabBar.delegate = self ;
    
    
}

- (void)tabBar:(TXTabBar *)tabBar didIiemSelected:(UIButton *)button
{
    self.selectedIndex = button.tag ;
    
}



@end
