//
//  TXAnimationController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/6.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXAnimationController.h"
#import "TXSettingGroup.h"
#import "TXSettingItem.h"
#import "TXSettingItemSwitch.h"

@interface TXAnimationController ()

@end

@implementation TXAnimationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    TXSettingGroup *group = [[TXSettingGroup alloc] init];
    group.header = @"当您有新中奖订单,启动程序时通过动画通知您。为避免过于频繁,高频彩不会提醒";
    
    TXSettingItem *item1 = [TXSettingItemSwitch settingItemWithName:@"双色球"];
   
    
    group.items = @[item1];
    
    [self.groups addObject:group];

}



@end
