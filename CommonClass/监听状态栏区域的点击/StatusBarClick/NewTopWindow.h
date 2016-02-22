//
//  NewTopWindow.h
//  监听状态栏区域的点击
//
//  Created by line on 16/2/22.
//  Copyright © 2016年 line. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewTopWindow : UIWindow

/**
 *  获取唯一的TopWindow
 */
+ (instancetype)shareNewTopWindow;

/**
 *  状态栏window
 *
 *  @param block 当点击状态栏时会调用此block
 */
+ (void)showWithStatusBarClickBlock:(void (^)())block;

@end
