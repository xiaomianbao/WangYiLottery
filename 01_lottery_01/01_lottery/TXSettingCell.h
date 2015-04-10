//
//  TXSettingCell.h
//  01_lottery
//
//  Created by 李伟豹 on 15/4/5.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TXSettingItem.h"

@interface TXSettingCell : UITableViewCell

@property (nonatomic ,strong) TXSettingItem * item ;

+ (instancetype) initWithTableView : (UITableView *) tableView;

@end
