//
//  HIUserDefaults.m
//  HIKit
//
//  Created by Apple on 2019/7/19.
//  Copyright © 2019 MR-HI. All rights reserved.
//

#import "HIUserDefaults.h"

@implementation HIUserDefaults

+ (void)setLogin:(BOOL)login {
    [[self standardUserDefaults] setBool:login forKey:HIKEYISLOGIN];
}

+ (BOOL)isLogin {
    return [[self standardUserDefaults] boolForKey:HIKEYISLOGIN];
}

@end
