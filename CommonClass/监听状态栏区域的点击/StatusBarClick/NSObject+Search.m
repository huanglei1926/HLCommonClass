//
//  NSObject+Search.m
//  监听状态栏区域的点击
//
//  Created by line on 16/2/22.
//  Copyright © 2016年 line. All rights reserved.
//

#import "NSObject+Search.h"
#import "UIView+Intersect.h"

@implementation NSObject (Search)


- (void)searchAllScrollViewsInView:(UIView *)view
{
    //判断view是否在屏幕内
    if (![view intersectWithView:nil]) return;
    //遍历子控件
    for (UIView *subView in view.subviews) {
        [self searchAllScrollViewsInView:subView];
    }
    //判断子控件view是否为UIScrollView
    if (![view isKindOfClass:[UIScrollView class]]) return;
    
    //移动scrollView
    UIScrollView *scrollView = (UIScrollView *)view;
    CGPoint offset = scrollView.contentOffset;
    offset.y = - scrollView.contentInset.top;
    [scrollView setContentOffset:offset animated:YES];
}
@end
