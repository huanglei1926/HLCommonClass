//
//  UITextField+Placeholder.m
//  line
//
//  Created by xmg on 15/1/22.
//  Copyright © 2015年 line. All rights reserved.
//

#import "UITextField+Placeholder.h"
#import <objc/message.h>
// runtime:主要目的操作系统的类

// OC系统自带控件中,所有的子控件都是懒加载
@implementation UITextField (Placeholder)

+ (void)load
{
    Method setPlaceholderMethod = class_getInstanceMethod(self, @selector(setPlaceholder:));
     Method new_setPlaceholderMethod = class_getInstanceMethod(self, @selector(new_setPlaceholder:));
    
    // 交互方法
    method_exchangeImplementations(setPlaceholderMethod, new_setPlaceholderMethod);
    
}

// 设置占位文字颜色,当用户调用self.placeholderColor时,会来到这里
- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    //将颜色保存到@"placeholderColor"中
    // 1.保存占位文字颜色到系统的类,关联
    // object:保存到哪个对象中
    // key:属性名
    // value:属性值
    // policy:策略
    objc_setAssociatedObject(self, @"placeholderColor", placeholderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    //将placeholderLabel取出,并设置颜色
    UILabel *placeholderLabel = [self valueForKeyPath:@"placeholderLabel"];
    placeholderLabel.textColor = placeholderColor;
}


- (UIColor *)placeholderColor
{
    return objc_getAssociatedObject(self, @"placeholderColor");
}

//系统调用setPlaceholder方法时,会来到这里
- (void)new_setPlaceholder:(NSString *)placeholder
{
    //设置占位符文字,实际上调用的是系统的setPlaceholder方法
    [self new_setPlaceholder:placeholder];
    
    // 设置占位文字颜色,
    self.placeholderColor = self.placeholderColor;
}

@end
