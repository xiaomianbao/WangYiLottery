//
//  TXProduct.h
//  01_lottery
//
//  Created by 李伟豹 on 15/4/6.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TXProduct : NSObject

/**
 "title": "网易电视指南",
 "id": "com.netease.tvguide",
 "url": "http://itunes.apple.com/app/id480095986",
 "icon": "tvguide@2x.png",
 "customUrl": "tvguide"
 */

@property (nonatomic ,copy) NSString * title ;
@property (nonatomic ,copy) NSString * productID ;
@property (nonatomic ,copy) NSString * icon ;
@property (nonatomic ,copy) NSString * customUrl ;

+ (instancetype) productWithDict :(NSDictionary *) dict ;
- (instancetype) initWithDict :(NSDictionary *) dict ;

@end
