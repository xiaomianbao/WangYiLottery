//
//  TXSettingItem.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/5.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXSettingItem.h"

@implementation TXSettingItem

+ (instancetype) settingItemWithName : (NSString *) name icon :(NSString *)icon
{
    TXSettingItem *item = [[self alloc] init];
    item.name = name ;
    item.icon = icon ;
    
    return item ;
}


+ (instancetype) settingItemWithName : (NSString *) name subTitle :(NSString *)subTitle
{
    TXSettingItem *item = [[self alloc] init];
    item.name = name ;
    item.subTitle = subTitle ;
    
    return item ;
}
@end
