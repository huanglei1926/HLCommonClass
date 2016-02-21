//
//  UIImage+ClipImage.h
//  百思不得姐
//
//  Created by line on 16/2/11.
//  Copyright © 2016年 line. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ClipImage)

//边角裁剪
- (instancetype)clipImage;

+ (instancetype)clipImage:(NSString *)image;

//圆形裁剪
- (instancetype)circleImage;

+ (instancetype)circleImage:(NSString *)image;

@end
