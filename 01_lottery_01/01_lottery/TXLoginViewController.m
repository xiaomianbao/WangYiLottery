//
//  TXLoginViewController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/4.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXLoginViewController.h"
#import "UIImage+Extension.h"
#import "TXSettingViewController.h"


@interface TXLoginViewController ()
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

- (IBAction)settingBtnClick:(id)sender;



@end

@implementation TXLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self.loginBtn setBackgroundImage:[UIImage resizeIamgeWithName:@"RedButton"] forState:UIControlStateNormal];
    
    [self.loginBtn setBackgroundImage:[UIImage resizeIamgeWithName:@"RedButtonPressed"] forState:UIControlStateHighlighted];
    
   
    
    
}


- (IBAction)settingBtnClick:(id)sender
{
    TXSettingViewController *settingVC = [[TXSettingViewController alloc] init];
    
    
    [self.navigationController pushViewController:settingVC animated:YES];
}



@end
