//
//  TXSettingItem.h
//  01_lottery
//
//  Created by 李伟豹 on 15/4/5.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^TXSettingItemOption)();

@interface TXSettingItem : NSObject

/**
 *  设置名称
 */
@property (nonatomic ,strong) NSString * name ;
/**
 *  设置图标
 */
@property (nonatomic ,strong) NSString * icon ;
/**
 *  设置子标题
 */
@property (nonatomic ,strong) NSString * subTitle ;

/**
 * 点击对应的cell需要做什么事情
 */
@property (nonatomic ,copy) TXSettingItemOption  option;


+ (instancetype) settingItemWithName : (NSString *) name icon :(NSString *)icon ;
+ (instancetype) settingItemWithName : (NSString *) name subTitle :(NSString *)subTitle ;

@end
