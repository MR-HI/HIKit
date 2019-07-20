//
//  HIUserDefaults.h
//  HIKit
//
//  Created by Apple on 2019/7/19.
//  Copyright © 2019 MR-HI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HIUserDefaults : NSUserDefaults

/**
 是否登录，YES代表已登录，NO代表已注销
 */
+ (void)setLogin:(BOOL)login;
+ (BOOL)isLogin;

@end

NS_ASSUME_NONNULL_END
