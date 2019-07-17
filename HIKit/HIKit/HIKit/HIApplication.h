//
//  HIApplication.h
//  HIKit
//
//  Created by Apple on 2019/7/17.
//  Copyright © 2019 MR-HI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HIApplication : NSObject

/**
 输出启动选项
 */
+ (void)logLaunchOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
