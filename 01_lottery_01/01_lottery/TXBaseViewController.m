//
//  TXSettingViewController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/4.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXBaseViewController.h"
#import "TXSettingItem.h"
#import "TXSettingGroup.h"
#import "TXSettingCell.h"
#import "TXSettingItemArrow.h"
#import "TXSettingItemSwitch.h"


@interface  TXBaseViewController()



@end

@implementation TXBaseViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.showsVerticalScrollIndicator = NO ;
    
//    self.tableView.backgroundView = nil ;
    
    self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg"]];
    
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:nil action:nil];
}

#pragma mark - 懒加载
- (NSMutableArray *)groups
{
    if (_groups ==nil) {
        
        _groups = [NSMutableArray array];
    }
    
    return  _groups;
}


#pragma mark - 初始化tabView的样式
- (instancetype)init
{
    if (self = [super initWithStyle:UITableViewStyleGrouped]) {
        
    }
    
    return  self ;
}

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    return [super initWithStyle:style];
}
#pragma mark - 数据源方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return self.groups.count;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    TXSettingGroup *group = self.groups[section];
    return group.items.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TXSettingGroup *group = self.groups[indexPath.section];
    TXSettingItem *item = group.items[indexPath.row];
    
    //1.创建cell
    TXSettingCell *cell = [TXSettingCell initWithTableView:tableView];
    //2.给cell传递模型
    cell.item = item ;
    
    return cell;
}

#pragma mark - tableView的代理方法

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    TXSettingGroup *group = self.groups[indexPath.section];
    TXSettingItem *item = group.items[indexPath.row];
    
    if ([item isKindOfClass:[TXSettingItemArrow class]]) {
        
        TXSettingItemArrow * arrowItem = (TXSettingItemArrow *)item;
        if (arrowItem.targetVc) {
            
            UIViewController * vc = [[arrowItem.targetVc alloc] init];

            vc.title = item.name ;
            
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
    if(item.option){
        
        item.option();
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section

{
      TXSettingGroup *group = self.groups[section];
    return group.footer ;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    TXSettingGroup *group = self.groups[section];
    return group.header ;
}

@end
