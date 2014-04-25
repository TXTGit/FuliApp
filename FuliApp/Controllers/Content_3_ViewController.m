//
//  Content_3_1_ViewController.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-24.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "Content_3_ViewController.h"

@interface Content_3_ViewController ()

@end

@implementation Content_3_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"富力科技园环境简介";
	
}

-(void)toggleMenu:(id)sender
{
    if (self.toggleBtn.selected) {
        [self closeMenu];
        [self.toggleBtn setSelected:NO];

    }else{
        [self openMenu];
        [self.toggleBtn setSelected:YES];
    }
    
}

-(void)openMenu
{
    self.menuView.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, -176);
}

-(void)closeMenu
{
   self.menuView.transform = CGAffineTransformTranslate(self.menuView.transform, 0, 176);
}


@end
