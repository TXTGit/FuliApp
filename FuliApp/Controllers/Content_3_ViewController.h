//
//  Content_3_1_ViewController.h
//  FuliApp
//
//  Created by xiangpaopao on 14-4-24.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "WebShowViewController.h"

@interface Content_3_ViewController : WithBackBtnViewController

@property (nonatomic, strong)IBOutlet UIView *menuView;
@property (nonatomic, strong)IBOutlet UIButton *toggleBtn;

-(IBAction)toggleMenu:(id)sender;

@end
