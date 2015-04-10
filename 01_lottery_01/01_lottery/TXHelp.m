//
//  TXHelp.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/6.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXHelp.h"

@implementation TXHelp


+ (instancetype) helpWithDict: (NSDictionary *) dict
{
    return [[self  alloc]initWithDict:dict];
}
- (instancetype) initWithDict: (NSDictionary *) dict
{
    if (self = [super init]) {
        
        self.helpID = dict[@"id"];
        self.html = dict[@"html"];
        self.title = dict[@"title"];

    }
    
    return self ;
}
@end
