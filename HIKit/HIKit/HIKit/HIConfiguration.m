//
//  HIConfiguration.m
//  HIKit
//
//  Created by Apple on 2019/7/17.
//  Copyright © 2019 MR-HI. All rights reserved.
//

#import "HIConfiguration.h"

@implementation HIConfiguration

+ (instancetype)sharedConfiguration {
    static HIConfiguration *configuration = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        configuration = [[HIConfiguration alloc] init];
    });
    return configuration;
}

+ (void)setLogEnable:(BOOL)enable {
    [[self sharedConfiguration] setLogEnable:enable];
}

+ (BOOL)logEnable {
    return [[self sharedConfiguration] logEnable];
}

+ (void)setThemeColor:(UIColor *)themeColor {
    [[self sharedConfiguration] setThemeColor:themeColor];
}

+ (UIColor *)themeColor {
    if ([[self sharedConfiguration] themeColor]) {
        return [[self sharedConfiguration] themeColor];
    } else {
        return HICOLORWHITE;
    }
}

+ (void)setBackgroundColor:(UIColor *)backgroundColor {
    [[self sharedConfiguration] setBackColor:backgroundColor];
}

+ (UIColor *)backgroundColor {
    return [[self sharedConfiguration] backColor];
}

+ (void)setNavigationBarBackgroundColor:(UIColor *)color {
    [[UINavigationBar appearance] setBackgroundColor:color];
}

+ (void)setNavigationBarBackgroundImage:(UIImage *)image {
    [[UINavigationBar appearance] setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
}

+ (void)setShowNavigationBarShadow:(BOOL)show {
    if (show) {
        [[UINavigationBar appearance] setShadowImage:nil];
    } else {
        [[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
    }
}

@end
