//
//  RootMenuViewController.h
//  FuliApp
//
//  Created by xiangpaopao on 14-4-10.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WithBackBtnViewController.h"


@interface RootMenuViewController : UIViewController<UIAlertViewDelegate>

@property (nonatomic, strong)IBOutlet UIButton * menuBtn2;

@property (nonatomic, strong)IBOutlet UIView *menuView;


-(IBAction)pushAction2:(id)sender;




@end
