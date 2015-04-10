//
//  TXNavigationController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/3.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXNavigationController.h"

@interface TXNavigationController ()

@end

@implementation TXNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
    
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
     viewController.hidesBottomBarWhenPushed = YES ;
    [super pushViewController:viewController animated:animated];
    
   
}

+ (void)initialize
{
    
    //设置导航栏主题
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    NSMutableDictionary * dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    dict[NSForegroundColorAttributeName] = [UIColor greenColor];
    
    navigationBar.titleTextAttributes = dict;
    
    //设置返回页面的箭头样式(通过UINavigationBar来设置)
    navigationBar.tintColor = [UIColor whiteColor];
    
    
    //设置导航项内容 （UIBarButtonItem）
   UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *itemAttrs = [NSMutableDictionary dictionary];
    itemAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    itemAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    [item setTitleTextAttributes:itemAttrs forState:UIControlStateNormal];
    
    

   

//   [item setback]
    
}

@end
