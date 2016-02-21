//
//  UIBarButtonItem+NewExtension.m
//  百思不得姐
//
//  Created by line on 16/1/13.
//  Copyright © 2016年 line. All rights reserved.
//

#import "UIBarButtonItem+NewExtension.h"

@implementation UIBarButtonItem (NewExtension)

//创建设置导航栏按钮的方法
+ (UIBarButtonItem *)barButtonItemCreateItemWithImage:(NSString *)image HighImage:(NSString *)highImage Target:(id)target Action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    UIView *view = [[UIView alloc] initWithFrame:button.bounds];
    [view addSubview:button];
    return [[UIBarButtonItem alloc] initWithCustomView:view];
}

+ (UIBarButtonItem *)barButtonItemCreateItemWithImage:(NSString *)image SelectImage:(NSString *)selectImage Target:(id)target Action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectImage] forState:UIControlStateSelected];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    UIView *view = [[UIView alloc] initWithFrame:button.bounds];
    [view addSubview:button];
    return [[UIBarButtonItem alloc] initWithCustomView:view];
}

+ (UIBarButtonItem *)barButtonItemBackItemWithImage:(NSString *)image HighImage:(NSString *)highImage Target:(id)target Action:(SEL)action Title:(NSString *)title
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [button sizeToFit];
    button.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIView *view = [[UIView alloc] initWithFrame:button.bounds];
    [view addSubview:button];
    return [[UIBarButtonItem alloc] initWithCustomView:view];
    
    
}

@end
