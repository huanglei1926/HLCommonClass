//
//  NSDate+NewExtension.h
//  百思不得姐
//
//  Created by line on 16/1/25.
//  Copyright © 2016年 line. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (NewExtension)
//时间转时间戳

//是否是今年
- (BOOL)isThisYear;

//是否是今天
- (BOOL)isToday;

//是否是昨天
- (BOOL)isYesterday;


@end
