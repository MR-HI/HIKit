//
//  HIConfiguration.h
//  HIKit
//
//  Created by Apple on 2019/7/17.
//  Copyright © 2019 MR-HI. All rights reserved.
//

#import <Foundation/Foundation.h>

#define HILogEnable  [HIConfiguration logEnable]

NS_ASSUME_NONNULL_BEGIN

@interface HIConfiguration : NSObject

@property (nonatomic, assign) BOOL logEnable;

+ (instancetype)sharedConfigutation;

/**
 YES代表开启输出，NO代表关闭输出
 */
+ (void)setLogEnable:(BOOL)enable;
+ (BOOL)logEnable;

@end

NS_ASSUME_NONNULL_END
