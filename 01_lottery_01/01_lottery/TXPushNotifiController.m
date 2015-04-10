//
//  TXPushNotifiController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/6.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXPushNotifiController.h"
#import "TXSettingGroup.h"
#import "TXSettingItem.h"
#import "TXSettingItemArrow.h"
#import "TXLotteryPushController.h"
#import "TXAnimationController.h"
#import "TXScoreViewController.h"
@interface TXPushNotifiController ()

@end

@implementation TXPushNotifiController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupGroup];
  
}

- (void)setupGroup
{
    
    TXSettingGroup *group = [[TXSettingGroup alloc] init];
    
    TXSettingItem *item1 = [TXSettingItemArrow settingItemWithName:@"开奖号码推送" targetVC:[TXLotteryPushController class]];
    TXSettingItem *item2 = [TXSettingItemArrow settingItemWithName:@"中奖动画" targetVC:[TXAnimationController class]];
    TXSettingItem *item3 = [TXSettingItemArrow settingItemWithName:@"比分直播提醒" targetVC:[TXScoreViewController class]];
    TXSettingItem *item4 = [TXSettingItemArrow settingItemWithName:@"购彩定时提醒" targetVC:nil];
    group.items = @[item1,item2,item3,item4];
    
    [self.groups addObject:group];
}


@end
