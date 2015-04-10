//
//  TXSettingViewController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/4.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXSettingViewController.h"
#import "TXSettingItem.h"
#import "TXSettingGroup.h"
#import "TXSettingCell.h"
#import "TXSettingItemArrow.h"
#import "TXSettingItemSwitch.h"
#import "TXTestController.h"
#import "TXProductViewController.h"
#import "TXPushNotifiController.h"
#import "TXHelpViewController.h"
#import "TXAboutViewController.h"

@interface  TXSettingViewController()

@property (nonatomic ,strong) NSMutableArray * groups ;

@end

@implementation TXSettingViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.showsVerticalScrollIndicator = NO ;
    
    self.navigationItem.title = @"设置";
    
    [self setupGroup];
}


- (void) setupGroup
{

    
    TXSettingGroup *group1 = [[TXSettingGroup alloc] init];
    TXSettingItem * morePush = [TXSettingItemArrow settingItemWithName:@"推送和提醒" icon:@"MorePush" targetVC : [TXPushNotifiController class]];
    
    TXSettingItemSwitch * handShake = [TXSettingItemSwitch settingItemWithName:@"摇一摇机选" icon:@"handShake"];
    
    TXSettingItemSwitch * sound_Effect = [TXSettingItemSwitch settingItemWithName:@"声音效果" icon:@"sound_Effect" ];
    group1.items = @[morePush,handShake,sound_Effect];
    
    [self.groups addObject:group1];
    
    
    
    TXSettingGroup *group2 = [[TXSettingGroup alloc] init];
    TXSettingItem * moreUpdate = [TXSettingItemArrow settingItemWithName:@"检查版本更新" icon:@"MoreUpdate" targetVC :nil];
    
    __weak typeof(self) vc = self ;
    moreUpdate.option = ^{
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"检查版本更新" message:@"已经是最新版本" delegate:vc cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
    };
    
    TXSettingItem * moreHelp = [TXSettingItemArrow settingItemWithName:@"帮助" icon:@"MoreHelp" targetVC :[TXHelpViewController class]];
    TXSettingItem * moreShare = [TXSettingItemArrow settingItemWithName:@"分享" icon:@"MoreShare" targetVC :[TXTestController class]];
    TXSettingItem * moreMessage = [TXSettingItemArrow settingItemWithName:@"查看消息" icon:@"MoreMessage" targetVC :[TXTestController class]];
    TXSettingItem * moreNetease = [TXSettingItemArrow settingItemWithName:@"产品推荐" icon:@"MoreNetease" targetVC :[TXProductViewController class]];
    TXSettingItem * moreAbout = [TXSettingItemArrow settingItemWithName:@"关于" icon:@"MoreAbout" targetVC :[TXAboutViewController class]];
    TXSettingItem * iDInfo = [TXSettingItemArrow settingItemWithName:@"版本信息" icon:@"IDInfo" targetVC :[TXTestController class]];
    
    
    group2.items = @[moreUpdate,moreHelp,moreShare,moreMessage,moreNetease,moreAbout,iDInfo];

    [self.groups addObject:group2];

}






@end
