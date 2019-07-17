//
//  HIApplication.m
//  HIKit
//
//  Created by Apple on 2019/7/17.
//  Copyright © 2019 MR-HI. All rights reserved.
//

#import "HIApplication.h"

#import <UIKit/UIKit.h>

@implementation HIApplication

+ (void)logLaunchOptions:(NSDictionary *)launchOptions {
    if (!launchOptions) {
        HILog(@"启动选项",@"应用程序正常启动");
    } else if ([launchOptions objectForKey:UIApplicationLaunchOptionsURLKey]) {
        if ([launchOptions objectForKey:UIApplicationLaunchOptionsSourceApplicationKey]) {
            HILog(@"启动选项",@"从第三方应用启动 %@",[launchOptions objectForKey:UIApplicationLaunchOptionsSourceApplicationKey]);
        } else {
            HILog(@"启动选项",@"应用通过网页启动 %@",[launchOptions objectForKey:UIApplicationLaunchOptionsURLKey]);
        }
    } else if ([launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey]) {
        HILog(@"启动选项",@"通过远程通知启动 %@",[launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey]);
    } else if ([launchOptions objectForKey:UIApplicationLaunchOptionsLocalNotificationKey]) {
        HILog(@"启动选项",@"通过本地通知启动 %@",[launchOptions objectForKey:UIApplicationLaunchOptionsLocalNotificationKey]);
    } else {
        HILog(@"启动选项",@"通过其他方式启动");
    }
}

@end
