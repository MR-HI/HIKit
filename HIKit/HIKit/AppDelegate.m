//
//  AppDelegate.m
//  HIKit
//
//  Created by Apple on 2019/7/16.
//  Copyright © 2019 MR-HI. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [HIConfiguration setLogEnable:YES];
    HILog(@"应用程序",@"应用程序启动完毕");
    [HIApplication logLaunchOptions:launchOptions];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    HILog(@"应用程序",@"应用程序即将挂起");
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    HILog(@"应用程序",@"应用程序进入后台");
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    HILog(@"应用程序",@"程序即将进入前台");
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    HILog(@"应用程序",@"应用程序已经激活");
}


- (void)applicationWillTerminate:(UIApplication *)application {
    HILog(@"应用程序",@"应用程序即将终止");
}


@end
