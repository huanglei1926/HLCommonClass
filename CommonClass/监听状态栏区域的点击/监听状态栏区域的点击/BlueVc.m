//
//  BlueVc.m
//  监听状态栏区域的点击
//
//  Created by line on 16/2/22.
//  Copyright © 2016年 line. All rights reserved.
//

#import "BlueVc.h"
#import "UIViewController+NewTop.h"

@implementation BlueVc

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation
{
    return UIStatusBarAnimationSlide;
}

- (BOOL)new_ignoreStatusBar
{
    return YES;
}

@end
