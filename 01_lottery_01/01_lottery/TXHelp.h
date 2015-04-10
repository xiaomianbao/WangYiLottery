//
//  TXHelp.h
//  01_lottery
//
//  Created by 李伟豹 on 15/4/6.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TXHelp : NSObject
//"title" : "如何连续多期买同一注号码？",
//"html" : "help.html",
//"id" : "whatisfollowandtimes"


@property (nonatomic ,copy) NSString *  title;
@property (nonatomic ,copy) NSString *  html;
@property (nonatomic ,copy) NSString *  helpID;

+ (instancetype) helpWithDict: (NSDictionary *) dict ;
- (instancetype) initWithDict: (NSDictionary *) dict ;

@end
