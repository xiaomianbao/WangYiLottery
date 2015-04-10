//
//  TXScoreViewController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/6.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXScoreViewController.h"
#import "TXSettingGroup.h"
#import "TXSettingItem.h"
#import "TXSettingItemSwitch.h"
#import "TXSettingItemLabel.h"

@interface TXScoreViewController ()

@end

@implementation TXScoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TXSettingGroup *group = [[TXSettingGroup alloc] init];
    group.footer = @"当您关注的比赛比分发生变化的时候,通过小弹窗或是推送进行提醒";
    TXSettingItem *item1 = [TXSettingItemSwitch settingItemWithName:@"提醒我关注的比赛"];
    group.items = @[item1];
    
    
    TXSettingGroup *group2 = [[TXSettingGroup alloc] init];
    group2.header = @"只在以下时间提醒比分直播";
    TXSettingItem *item2 = [TXSettingItemLabel settingItemWithName:@"起始时间"];
    group2.items = @[item2];
   
    
    TXSettingGroup *group3 = [[TXSettingGroup alloc] init];
    TXSettingItem *item3 = [TXSettingItemLabel settingItemWithName:@"结束时间"];
    group3.items = @[item3];
    
    
    [self.groups addObject:group];
    [self.groups addObject:group2];
    [self.groups addObject:group3];
    
    
}





@end
