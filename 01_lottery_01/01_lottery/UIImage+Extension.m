//
//  UIImage+Extension.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/4.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage *) resizeIamgeWithName : (NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
   UIImage *resizeIamge = [image stretchableImageWithLeftCapWidth:image.size.width *0.5 topCapHeight:image.size.height * 0.5];
    
    return resizeIamge ;
    
}

+ (UIImage *) screenShotWithView :(UIView *)view
{
    //1.开启上下文
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 0.0);
    //2.将view的layer写入上下文中
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    //3.从上下文中获取图片
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    //4.结束上下文
    UIGraphicsEndImageContext();
    
    return image;
}



@end
