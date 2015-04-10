//
//  TXAboutViewController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/7.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXAboutViewController.h"
#import "TXSettingGroup.h"
#import "TXSettingItem.h"
#import "TXSettingItemSwitch.h"
#import "TXSettingItemArrow.h"

@interface TXAboutViewController ()

@end

@implementation TXAboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TXSettingGroup *group = [[TXSettingGroup alloc] init];
    TXSettingItem *item1 = [TXSettingItemArrow settingItemWithName:@"测试" subTitle: @"87776"];
    
    TXSettingItem *item2 = [TXSettingItemArrow settingItemWithName:@"测试2" subTitle: @"87776"];
    
    
    group.items = @[item1,item2];
    
    
    [self.groups addObject:group];
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor grayColor];
    view.frame = CGRectMake(0, 0,self.view.frame.size.width , self.view.frame.size.height *0.4  );
            UIImageView *headView = [[UIImageView alloc] init];
            headView.image = [UIImage imageNamed:@"zhongjiang"];
            headView.frame = CGRectMake(10, 10, view.frame.size.width*0.8 , view.frame.size.width*0.50);
            [view addSubview:headView];
    
    self.tableView.tableHeaderView = view ;
    
    
    }



@end
