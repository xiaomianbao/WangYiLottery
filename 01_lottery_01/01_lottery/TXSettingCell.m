//
//  TXSettingCell.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/5.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXSettingCell.h"
#import "TXSettingItemSwitch.h"
#import "TXSettingItemArrow.h"
#import "TXSettingItemLabel.h"

@interface TXSettingCell ()

@property (nonatomic ,strong) UIImageView * cellIamgeView ;

@property (nonatomic ,strong) UISwitch * cellSwitch ;

@property (nonatomic ,strong) UILabel * cellLabel ;



@end

@implementation TXSettingCell

+ (instancetype)initWithTableView:(UITableView *)tableView
{
    static NSString * ID = @"setting";
    
    TXSettingCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[TXSettingCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    
    return  cell ;
}

#pragma mark - 懒加载，优化

- (UIImageView *)cellIamgeView
{
    if (_cellIamgeView == nil ) {
        
        _cellIamgeView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]] ;
    }
    return _cellIamgeView ;
}

- (UISwitch *)cellSwitch
{
    if (_cellSwitch == nil) {
        
        _cellSwitch = [[UISwitch alloc] init] ;
        //对按钮状态进行监听
        [_cellSwitch addTarget:self action:@selector(switchChange:) forControlEvents:UIControlEventValueChanged];
        
}
    
   
    return _cellSwitch ;
}

#pragma mark -监听按钮的状态
- (void) switchChange :(UISwitch *)mSwitch
{
    //NSLog(@"%@--%d",self.item.name ,mSwitch.on);
    //保存按钮的信息
    NSUserDefaults * useDefault = [NSUserDefaults standardUserDefaults];
    
    [useDefault setBool:mSwitch.on forKey:self.item.name];
}

- (UILabel *)cellLabel
{
    if (_cellLabel == nil) {
        _cellLabel= [[UILabel alloc] init];
       _cellLabel.frame = CGRectMake(0, 0, 100, 40);
        _cellLabel.backgroundColor = [UIColor blueColor];
        
    }
    
    return _cellLabel ;
}

- (void)setItem:(TXSettingItem *)item
{
    _item = item ;
    if (item.icon ) {
        self.imageView.image = [UIImage imageNamed:item.icon];
    }
    
    self.textLabel.text = item.name;
    
    if (item.subTitle) {
        self.detailTextLabel.text = item.subTitle ;
    }
    
    if ([self.item isKindOfClass:[TXSettingItemArrow class]]) {
        
        self.accessoryView = self.cellIamgeView;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }else if([self.item isKindOfClass:[TXSettingItemSwitch class]]){
        
      BOOL switchState =  [[NSUserDefaults standardUserDefaults] boolForKey:self.item.name];
        self.cellSwitch.on = switchState;
        
        self.accessoryView = self.cellSwitch;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }else if([self.item isKindOfClass:[TXSettingItemLabel class]]){
        
   
        self.accessoryView = self.cellLabel;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }else{
        self.accessoryView = nil ;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }
}


@end
