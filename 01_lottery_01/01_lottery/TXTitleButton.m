//
//  TXTitleButton.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/3.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXTitleButton.h"

@interface TXTitleButton ()

@property (nonatomic ,strong) UIFont * titleFont ;

@end

@implementation TXTitleButton


- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        
        self.titleFont = [UIFont systemFontOfSize:16];
        self.titleLabel.font = self.titleFont ;
        
        self.imageView.contentMode = UIViewContentModeCenter ;
        
    }
    
    return self;
}


- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageW = 16;
    CGFloat imageY = 0;
    CGFloat imageX = contentRect.size.width - imageW;
    CGFloat imageH = contentRect.size.height;

   // NSLog(@"---%f---%f",contentRect.size.width,contentRect.size.height);
    return CGRectMake(imageX, imageY, imageW, imageH) ;
}


- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    NSDictionary *dict = @{NSFontAttributeName : self.titleFont };
   
 
    CGFloat titleW =  [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.width;
    
    CGFloat titleH = contentRect.size.height;
    
    
    return CGRectMake(titleX, titleY, titleW, titleH);
}
@end
