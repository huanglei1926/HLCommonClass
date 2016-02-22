//
//  UIView+Intersect.h
//  监听状态栏区域的点击
//
//  Created by line on 16/2/22.
//  Copyright © 2016年 line. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Intersect)
//判断当前view是否与指定view相交
- (BOOL)intersectWithView:(UIView *)view;

@end
