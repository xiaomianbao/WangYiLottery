//
//  TXShowHelpController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/6.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXShowHelpController.h"
#import "TXHelp.h"
@interface TXShowHelpController () <UIWebViewDelegate>

@end

@implementation TXShowHelpController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor purpleColor];
       self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStyleDone target:self action:@selector(back)];
    
    
    self.navigationItem.title = self.help.title;
    UIWebView *webView = [[UIWebView alloc] init];
    webView.frame = self.view.bounds;
    webView.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 60, 0);
    webView.delegate = self ;
    [self.view addSubview:webView];
    
    //这里是通过url加载本地资源里面的html文件 ，访问网络资源直接载url就行了
    NSURL *url =[[NSBundle mainBundle] URLForResource:self.help.html withExtension:nil];
    
    NSLog(@"%@",url);
//    file:///Users/liweibao/Library/Developer/CoreSimulator/Devices/CC21CC8E-24AE-4AD7-A88F-7B680766B081/data/Containers/Bundle/Application/A12266D3-B4EC-46DB-8D1E-B528EDDA7417/01_lottery.app/help.html
    
//    NSURL *url = [NSURL URLWithString:@"http://baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:request];
}


- (void) back
{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    //webView执行js代码
    
    NSString *js = [NSString stringWithFormat:@"window.location.href = '#%@';",self.help.helpID];
    
    [webView stringByEvaluatingJavaScriptFromString:js];
}

@end
