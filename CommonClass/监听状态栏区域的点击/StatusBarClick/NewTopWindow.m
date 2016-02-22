//
//  NewTopWindow.m
//  监听状态栏区域的点击
//
//  Created by line on 16/2/22.
//  Copyright © 2016年 line. All rights reserved.
//

#import "NewTopWindow.h"
#import "NewTopViewController.h"

@interface NewTopWindow ()<NSCopying>

@end


static NewTopWindow *window_;
@implementation NewTopWindow

+ (void)showWithStatusBarClickBlock:(void (^)())block
{
    if (window_) return;
    //设置NewTopWindow
    [NewTopWindow shareNewTopWindow].windowLevel = UIWindowLevelAlert;
    [NewTopWindow shareNewTopWindow].backgroundColor = [UIColor clearColor];
    [NewTopWindow shareNewTopWindow].hidden = NO;
    
    //设置根控制器
    NewTopViewController *newTopVc = [[NewTopViewController alloc] init];
    newTopVc.view.backgroundColor = [UIColor clearColor];
    newTopVc.view.frame = [UIApplication sharedApplication].statusBarFrame;
    newTopVc.view.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    newTopVc.statusBarClickBlock = block;
    
    [NewTopWindow shareNewTopWindow].rootViewController = newTopVc;
}

/**
 *  用户点击屏幕时,首先会调用这个方法,来确定由哪个view来处理点击事件
 *  @return 如果返回nil,代表当前window不处理这个事件
 */
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    //如果触摸点的y值大于20,则当前window(即NewTopWindow)不处理此点击事件
    if (point.y > 20) return nil;
    //否则按默认做法处理点击点击事件
    return [super hitTest:point withEvent:event];
}

#pragma mark ----------------
#pragma mark 单例模式

+ (instancetype)shareNewTopWindow
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        window_ = [[self alloc] init];
    });
    return window_;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        window_ = [super allocWithZone:zone];
    });
    return window_;
}

- (id)copyWithZone:(NSZone *)zone
{
    return window_;
}

@end
