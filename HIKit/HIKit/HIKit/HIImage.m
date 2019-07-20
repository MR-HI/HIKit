//
//  HIImage.m
//  HIKit
//
//  Created by Apple on 2019/7/18.
//  Copyright © 2019 MR-HI. All rights reserved.
//

#import "HIImage.h"

@implementation HIImage

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect= CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)imageNamed:(NSString *)name size:(NSString *)size {
    UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%@%@",name,size]];
    if (image == nil) {
        return [UIImage imageNamed:name];
    }
    return image;
}

+ (UIImage *)imageWithStartColor:(UIColor *)startColor endColor:(UIColor *)endColor size:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGColorSpaceRef colorSpace = CGColorGetColorSpace([endColor CGColor]);
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (CFArrayRef)@[(id)startColor.CGColor,(id)endColor.CGColor], NULL);
    CGPoint start = CGPointMake(0, 0);
    CGPoint end = CGPointMake(size.width, size.height);
    CGContextDrawLinearGradient(context, gradient, start, end, kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    CGGradientRelease(gradient);
    CGContextRestoreGState(context);
    CGColorSpaceRelease(colorSpace);
    UIGraphicsEndImageContext();
    return image;
}

@end
