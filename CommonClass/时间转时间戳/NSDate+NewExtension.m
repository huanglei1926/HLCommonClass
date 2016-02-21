//
//  NSDate+NewExtension.m
//  百思不得姐
//
//  Created by line on 16/1/25.
//  Copyright © 2016年 line. All rights reserved.
//

#import "NSDate+NewExtension.h"

@implementation NSDate (NewExtension)


//判断是否为今年
- (BOOL)isThisYear
{
    NSCalendar *calendar = [NSCalendar calendar];
    //调用方法的年份
    NSInteger selfYear = [calendar component:NSCalendarUnitYear fromDate:self];
    //当前年份
    NSInteger nowYear = [calendar component:NSCalendarUnitYear fromDate:[NSDate date]];
    
    return selfYear == nowYear;
    
}

//判断是否为今天
- (BOOL)isToday
{
    NSCalendar *calendar = [NSCalendar calendar];
    //调用方法的日期
    NSDateComponents *selfDay = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:self];
    //当前日期
    NSDateComponents *nowDay = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:[NSDate date]];
    
    return selfDay.year == nowDay.year && selfDay.month == nowDay.month && selfDay.day == nowDay.day;
}
//判断是否为昨天
- (BOOL)isYesterday
{
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyyMMdd";
    NSString *selfString = [fmt stringFromDate:self];
    NSString *nowString = [fmt stringFromDate:[NSDate date]];
    NSDate *selfDate = [fmt dateFromString:selfString];
    NSDate *nowDate = [fmt dateFromString:nowString];
    
    NSCalendar *calendar = [NSCalendar calendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *cmps = [calendar components:unit fromDate:selfDate toDate:nowDate options:0];
    return cmps.year == 0 && cmps.month == 0 && cmps.day == 1;
}


@end
