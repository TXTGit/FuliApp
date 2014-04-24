//
//  XppUtil.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-23.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "XppUtil.h"

@implementation XppUtil

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
