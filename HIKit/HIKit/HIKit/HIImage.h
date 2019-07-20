//
//  HIImage.h
//  HIKit
//
//  Created by Apple on 2019/7/18.
//  Copyright © 2019 MR-HI. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HIImage : UIImage

/**
 生成对应颜色的图片
*/
+ (UIImage *)imageWithColor:(UIColor *)color;

/**
 自动查找相关尺寸的图片
*/
+ (UIImage *)imageNamed:(NSString *)name size:(NSString *)size;

/**
 生成渐变图片，对角渐变
*/
+ (UIImage *)imageWithStartColor:(UIColor *)startColor endColor:(UIColor *)endColor size:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
