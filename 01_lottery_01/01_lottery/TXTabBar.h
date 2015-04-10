//
//  TXTabBar.h
//  01_lottery
//
//  Created by 李伟豹 on 15/4/3.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TXTabBar;
@protocol  TXTabBarDelegate <NSObject>

@optional
- (void) tabBar :(TXTabBar *)tabBar didIiemSelected :(UIButton *)button;

@end


@interface TXTabBar : UIView

@property (nonatomic ,weak) id<TXTabBarDelegate> delegate ;

- (void) addTabButtonWithName :(NSString *) name selectedName :(NSString *) selectedName ;

@end
