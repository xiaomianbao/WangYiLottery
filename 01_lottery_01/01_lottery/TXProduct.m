//
//  TXProduct.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/6.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXProduct.h"

@implementation TXProduct

+ (instancetype) productWithDict :(NSDictionary *) dict
{
   
    return  [[self alloc] initWithDict:dict];
}


- (instancetype) initWithDict :(NSDictionary *) dict
{
    if (self = [super init]) {
        
        self.icon = dict[@"icon"];
        self.title = dict[@"title"];
        self.productID = dict[@"id"];
        self.customUrl = dict[@"customUrl"];
        
    }
    
    return self ;
}
@end
