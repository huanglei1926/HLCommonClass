//
//  UIViewController+NewTop.h
//  监听状态栏区域的点击
//
//  Created by line on 16/2/22.
//  Copyright © 2016年 line. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NewTop <NSObject>

@optional
/**
 *  由用户控制是否忽略状态栏
 *
 *  @return 当返回值为YES时,此控制器将无法设置状态栏
 */
- (BOOL)new_ignoreStatusBar;

@end

@interface UIViewController (NewTop)<NewTop>

@end
