//
//  NewTopViewController.m
//  监听状态栏区域的点击
//
//  Created by line on 16/2/22.
//  Copyright © 2016年 line. All rights reserved.
//

#import "NewTopViewController.h"

@interface NewTopViewController ()

@end

@implementation NewTopViewController

/**
 *  设置控制器被点击时调用block
 */
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (self.statusBarClickBlock) self.statusBarClickBlock();
}


#pragma mark ----------------
#pragma mark 状态栏控制
/**
 *  将其他控制器的状态栏设置值传入此控制器,使其他控制器可以控制状态栏状态
 */

//设置状态栏是否隐藏
- (BOOL)prefersStatusBarHidden
{
    return self.showingVc.prefersStatusBarHidden;
}
//设置状态栏样式
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return self.showingVc.preferredStatusBarStyle;
}
//设置状态栏动画
- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation
{
    return self.showingVc.preferredStatusBarUpdateAnimation;
}


@end
