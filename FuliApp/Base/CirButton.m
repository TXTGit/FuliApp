//
//  CirButton.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-22.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "CirButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation CirButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:40.0];
}


@end
