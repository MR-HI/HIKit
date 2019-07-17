//
//  HIConfiguration.m
//  HIKit
//
//  Created by Apple on 2019/7/17.
//  Copyright © 2019 MR-HI. All rights reserved.
//

#import "HIConfiguration.h"

@implementation HIConfiguration

+ (instancetype)sharedConfigutation {
    static HIConfiguration *configuration = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        configuration = [[HIConfiguration alloc] init];
    });
    return configuration;
}

+ (void)setLogEnable:(BOOL)enable {
    [[self sharedConfigutation] setLogEnable:enable];
}

+ (BOOL)logEnable {
    return [[self sharedConfigutation] logEnable];
}

@end
