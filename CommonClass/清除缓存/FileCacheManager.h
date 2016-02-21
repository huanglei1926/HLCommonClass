//
//  FileCacheManager.h
//  line
//
//  Created by line on 15/1/22.
//  Copyright © 2015年 line. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileCacheManager : NSObject

/**
 *  计算文件夹的尺寸
 *
 *  @param directoriesPath 文件路径
 *  @param completeBlock   计算完之后回调
 */
+ (void)getCacheSizeOfDirectoriesPath:(NSString *)directoriesPath completeBlock:(void(^)(NSInteger))completeBlock;

+ (void)removeDirectoriesPath:(NSString *)directoriesPath;
@end
