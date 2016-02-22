//
//  UIViewController+NewTop.m
//  监听状态栏区域的点击
//
//  Created by line on 16/2/22.
//  Copyright © 2016年 line. All rights reserved.
//

#import "UIViewController+NewTop.h"
#import <objc/runtime.h>
#import "NewTopWindow.h"
#import "NewTopViewController.h"

@implementation UIViewController (NewTop)

+ (void)load
{
    //获取方法
    Method m1 = class_getInstanceMethod(self, @selector(viewWillAppear:));
    Method m2 = class_getInstanceMethod(self, @selector(new_viewWillAppear:));
    //交换方法
    method_exchangeImplementations(m1, m2);
}

//调用此方法时实际上调用的是viewWillAppear
- (void)new_viewWillAppear:(BOOL)animated
{
    //调用此方法时实际上调用的是viewWillAppear
    [self new_viewWillAppear:animated];
    
    //系统启动时自动生成的控制器
    if ([NSStringFromClass(self.class) isEqualToString:@"UIInputWindowController"]) return;
    
    //判断控制器是否有代理方法
    if ([self respondsToSelector:@selector(new_ignoreStatusBar)]) {
        //判断返回值
        if ([self new_ignoreStatusBar]) return;
    }
    
    //获取顶部控制器
    NewTopViewController *newTopVc = (NewTopViewController *)[NewTopWindow shareNewTopWindow].rootViewController;
    if (self == newTopVc) return;
    
    //刷新状态栏
    newTopVc.showingVc = self;
    //判断状态栏是否有动画
    if (newTopVc.showingVc.preferredStatusBarUpdateAnimation == UIStatusBarAnimationNone) {
        [newTopVc setNeedsStatusBarAppearanceUpdate];
    }else{
        [UIView animateWithDuration:0.25 animations:^{
            [newTopVc setNeedsStatusBarAppearanceUpdate];
        }];
    }
    
}

@end
