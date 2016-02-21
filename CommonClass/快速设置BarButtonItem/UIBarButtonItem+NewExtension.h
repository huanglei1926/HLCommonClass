//
//  UIBarButtonItem+NewExtension.h
//  百思不得姐
//
//  Created by line on 16/1/13.
//  Copyright © 2016年 line. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (NewExtension)

+ (UIBarButtonItem *)barButtonItemCreateItemWithImage:(NSString *)image HighImage:(NSString *)highImage Target:(id)target Action:(SEL)action;

+ (UIBarButtonItem *)barButtonItemCreateItemWithImage:(NSString *)image SelectImage:(NSString *)selectImage Target:(id)target Action:(SEL)action;

+ (UIBarButtonItem *)barButtonItemBackItemWithImage:(NSString *)image HighImage:(NSString *)highImage Target:(id)target Action:(SEL)action Title:(NSString *)title;

@end
