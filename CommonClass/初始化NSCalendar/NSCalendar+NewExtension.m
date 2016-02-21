//
//  NSCalendar+NewExtension.m
//  百思不得姐
//
//  Created by line on 16/1/25.
//  Copyright © 2016年 line. All rights reserved.
//

#import "NSCalendar+NewExtension.h"

@implementation NSCalendar (NewExtension)

+ (instancetype)calendar
{
    if ([NSCalendar resolveClassMethod:@selector(calendarWithIdentifier:)]) {
        return [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    }else{
        return [NSCalendar currentCalendar];
    }
}

@end
