//
//  TXSettingGroup.h
//  01_lottery
//
//  Created by 李伟豹 on 15/4/5.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface TXSettingGroup : NSObject
/**
 *  组头部名称
 */

@property (nonatomic ,strong) NSString * header ;
/**
 *  组尾部名称
 */
@property (nonatomic ,strong) NSString * footer ;

/**
 *  组内容
 */
@property (nonatomic ,strong) NSArray * items ;

@end
