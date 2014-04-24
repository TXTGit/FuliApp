//
//  TrButton.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-23.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "TrButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation TrButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }

    return self;
}


- (void)drawRect:(CGRect)rect
{
 [self.layer setMasksToBounds:YES];
 [self.layer setCornerRadius:6.0];
}



@end
