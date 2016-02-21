//
//  NSString+Extension.m
//  百思不得姐
//
//  Created by line on 16/1/18.
//  Copyright © 2016年 line. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (unsigned long long)fileSize
{
    unsigned long long size = 0;
    
    NSFileManager *manager = [NSFileManager defaultManager];
    //是否为文件夹
    BOOL isDirectory = NO;
    //路径是否存在
    BOOL exits = [manager fileExistsAtPath:self isDirectory:&isDirectory];
    //判断路径是否存在
    if (!exits) return size;
    //判断是否为文件夹
    if (isDirectory) {
        //获取文件夹大小
        NSDirectoryEnumerator *enumerator = [manager enumeratorAtPath:self];
        //遍历文件夹
        for (NSString *subPath in enumerator) {
            //获取全路径
            NSString *fullPath = [self stringByAppendingPathComponent:subPath];
            //累加大小
            size += [manager attributesOfItemAtPath:fullPath error:nil].fileSize;
        }
        
    }else{
    //文件
        size += [manager attributesOfItemAtPath:self error:nil].fileSize;
        
    }
    return size;
}

@end
