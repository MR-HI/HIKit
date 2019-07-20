//
//  HIConfiguration.h
//  HIKit
//
//  Created by Apple on 2019/7/17.
//  Copyright © 2019 MR-HI. All rights reserved.
//

#import <Foundation/Foundation.h>

#define HILogEnable  [HIConfiguration logEnable]
#define HICOLORTHEME [HIConfiguration themeColor]
#define HICOLORBACK  [HIConfiguration backgroundColor]

NS_ASSUME_NONNULL_BEGIN

@interface HIConfiguration : NSObject

@property (nonatomic, assign) BOOL logEnable;
@property (nonatomic, strong) UIColor *themeColor;
@property (nonatomic, strong) UIColor *backColor;

+ (instancetype)sharedConfiguration;

/**
 YES代表开启输出，NO代表关闭输出
 */
+ (void)setLogEnable:(BOOL)enable;
+ (BOOL)logEnable;

/**
 设置主题颜色
 */
+ (void)setThemeColor:(UIColor *)color;
+ (UIColor *)themeColor;

/**
 设置背景颜色
*/
+ (void)setBackgroundColor:(UIColor *)backgroundColor;
+ (UIColor *)backgroundColor;

/**
 设置导航栏背景色
*/
+ (void)setNavigationBarBackgroundColor:(UIColor *)color;

/**
 设置导航栏背景图片
*/
+ (void)setNavigationBarBackgroundImage:(UIImage *)image;

/**
 设置导航栏阴影
*/
+ (void)setShowNavigationBarShadow:(BOOL)show;

@end

NS_ASSUME_NONNULL_END
