//
//  NSObject+Search.h
//  监听状态栏区域的点击
//
//  Created by line on 16/2/22.
//  Copyright © 2016年 line. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (Search)

/**
 *  使当前界面的scrollView回到初始位置
 *
 *  @param view 一般为window
 */
- (void)searchAllScrollViewsInView:(UIView *)view;

@end
