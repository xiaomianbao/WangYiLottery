//
//  TXSettingItemArrow.h
//  01_lottery
//
//  Created by 李伟豹 on 15/4/5.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXSettingItem.h"

@interface TXSettingItemArrow : TXSettingItem

/**
 *  设置跳转的控制器
 */
@property (nonatomic,assign) Class targetVc;

+ (instancetype) settingItemWithName : (NSString *) name icon :(NSString *)icon targetVC :(Class) targetVC ;

+ (instancetype) settingItemWithName : (NSString *) name targetVC :(Class) targetVC ;



@end
