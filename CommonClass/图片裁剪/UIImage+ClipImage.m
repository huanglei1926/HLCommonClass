//
//  UIImage+ClipImage.m
//  百思不得姐
//
//  Created by line on 16/2/11.
//  Copyright © 2016年 line. All rights reserved.
//

#import "UIImage+ClipImage.h"

@implementation UIImage (ClipImage)

- (instancetype)clipImage
{
    //开启图形上下文
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    //创建路径
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, self.size.width, self.size.height) cornerRadius:self.size.width * 0.1];
    //开启裁剪
    [path addClip];
    //绘图
    [self drawAtPoint:CGPointZero];
    //获取图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //关闭图形上下文
    UIGraphicsEndImageContext();
    return image;
    
}

+ (instancetype)clipImage:(NSString *)image
{
    return [[self imageNamed:image] clipImage];
}

- (instancetype)circleImage
{
    //开启图形上下文
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    //创建路径
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, self.size.width, self.size.height) cornerRadius:self.size.width * 0.5];
    //开启裁剪
    [path addClip];
    //绘图
    [self drawAtPoint:CGPointZero];
    //获取图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //关闭图形上下文
    UIGraphicsEndImageContext();
    return image;
    
}

+ (instancetype)circleImage:(NSString *)image
{
    return [[self imageNamed:image] circleImage];
}


@end
