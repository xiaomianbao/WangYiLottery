//
//  TXSettingItemArrow.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/5.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXSettingItemArrow.h"

@implementation TXSettingItemArrow

+ (instancetype) settingItemWithName : (NSString *) name icon :(NSString *)icon targetVC :(Class) targetVC
{
    
 TXSettingItemArrow *item =   [self settingItemWithName:name icon:icon];
    item.targetVc = targetVC ;
    
    return item ;
}


+ (instancetype) settingItemWithName : (NSString *) name targetVC :(Class) targetVC
{
    return [self settingItemWithName:name icon:nil targetVC:targetVC];
}
@end
