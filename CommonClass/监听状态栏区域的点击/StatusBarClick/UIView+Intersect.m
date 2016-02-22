//
//  UIView+Intersect.m
//  监听状态栏区域的点击
//
//  Created by line on 16/2/22.
//  Copyright © 2016年 line. All rights reserved.
//

#import "UIView+Intersect.h"

@implementation UIView (Intersect)

- (BOOL)intersectWithView:(UIView *)view
{
    if (view == nil) {
        view = [UIApplication sharedApplication].keyWindow;
    }
    
    CGRect rect1 = [view convertRect:view.bounds toView:nil];
    CGRect rect2 = [self convertRect:self.bounds toView:nil];
    return CGRectContainsRect(rect1, rect2);
}

@end
