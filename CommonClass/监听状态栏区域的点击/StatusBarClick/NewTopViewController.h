//
//  NewTopViewController.h
//  监听状态栏区域的点击
//
//  Created by line on 16/2/22.
//  Copyright © 2016年 line. All rights reserved.
//

/**
 *  此控制器为覆盖在状态栏之上的控制器,即NewTopWindow的根控制器
 */
#import <UIKit/UIKit.h>

@interface NewTopViewController : UIViewController

/**
 *  点击状态栏会调用此block
 */
@property (nonatomic, copy) void (^statusBarClickBlock)();

/**
 *  当前界面显示的控制器
 */
@property (nonatomic, weak) UIViewController *showingVc;

@end
