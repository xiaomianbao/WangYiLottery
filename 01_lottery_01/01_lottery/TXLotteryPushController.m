//
//  TXLotterPushController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/6.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXLotteryPushController.h"
#import "TXSettingGroup.h"
#import "TXSettingItem.h"
#import "TXSettingItemSwitch.h"

@interface TXLotteryPushController ()

@end

@implementation TXLotteryPushController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    TXSettingGroup *group = [[TXSettingGroup alloc] init];
    group.header = @"打开设置即可在开奖后立即收到推送信息,获知开奖号码";
    
    TXSettingItem *item1 = [TXSettingItemSwitch settingItemWithName:@"双色球"];
    TXSettingItem *item2 = [TXSettingItemSwitch settingItemWithName:@"大乐透"];
    
    group.items = @[item1,item2];
    
    [self.groups addObject:group];
}




@end
