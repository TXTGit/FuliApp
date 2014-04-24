//
//  Content_1_2_ViewController.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-22.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "Content_1_2_ViewController.h"

@interface Content_1_2_ViewController ()

@property (nonatomic, strong)CALayer *imgLayer;

@end

@implementation Content_1_2_ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CALayer *imgLayer = [CALayer layer];
    imgLayer.contents = (id)[[UIImage imageNamed:@"zhihui2.jpg"] CGImage];
    [imgLayer setFrame:CGRectMake(0, -140, 865, 550)];
    if (IS_IPHONE5) {
        [imgLayer setFrame:CGRectMake(0, -80, 865, 550)];
    }
    [self.conView.layer addSublayer:imgLayer];
    self.imgLayer = imgLayer;

}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    
    CABasicAnimation *ani1 = [CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
    ani1.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    ani1.fromValue = [NSNumber numberWithInt:0];
    ani1.toValue = [NSNumber numberWithInt:-540];
    ani1.duration = 90;
    
    CABasicAnimation *ani2= [CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
    ani2.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    ani2.fromValue = [NSNumber numberWithInt:-540];
    ani2.toValue = [NSNumber numberWithInt:0];
    ani2.duration = 90;
   
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.animations = [NSArray arrayWithObjects:ani1, ani2, nil];
    group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    group.duration = 90;
    group.autoreverses = YES;
    group.repeatCount = 999;
    group.fillMode = kCAFillModeForwards;
    group.removedOnCompletion = NO;
    [self.imgLayer addAnimation:group forKey:@"position"];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
