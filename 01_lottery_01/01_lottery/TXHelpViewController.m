//
//  TXHelpViewController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/6.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXHelpViewController.h"
#import "TXSettingGroup.h"
#import "TXSettingItem.h"
#import "TXSettingItemArrow.h"
#import "TXHelp.h"
#import "TXShowHelpController.h"
#import "TXNavigationController.h"
@interface TXHelpViewController ()

@property (nonatomic ,strong) NSArray * helps ;

@end

@implementation TXHelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    TXSettingGroup *group = [[TXSettingGroup alloc] init];
    
    
      NSMutableArray * tempArray = [NSMutableArray array];
    for (int i = 0 ; i <self.helps.count; i++) {
        
        TXHelp *help = self.helps[i];
        TXSettingItem *item = [TXSettingItemArrow settingItemWithName:help.title icon:nil];
        
        [tempArray addObject:item];
    }
    
    group.items = tempArray ;
    [self.groups addObject:group];
    
}
#pragma mark - 懒加载

- (NSArray *)helps
{
    if (_helps == nil  ) {
        
        NSData *data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"help.json" ofType:nil]];
        
     NSArray * array =   [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        
        NSMutableArray * tempArray = [NSMutableArray array];
        for (NSDictionary *dict in array) {
            
            TXHelp *help = [TXHelp helpWithDict:dict ];
            
            [tempArray addObject:help];
            
        }
        _helps = tempArray ;
        
    }
    return _helps ;
}

#pragma mark - 重写父类的选中方法，将push改变为modal
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    TXShowHelpController *show = [[TXShowHelpController alloc] init];
     //show.help = self.groups[indexPath.row]; 傻逼错误看清楚了，煞笔
    show.help = self.helps[indexPath.row];
    TXNavigationController *nav = [[TXNavigationController alloc] initWithRootViewController:show];

   
 
    [self presentViewController:nav animated:YES completion:nil];
    

    
}


@end
