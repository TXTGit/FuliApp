//
//  Content_1_4_ViewController.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-23.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "Content_1_4_ViewController.h"

@interface Content_1_4_ViewController ()

@property (nonatomic, strong)CALayer *imgLayer;

@end

@implementation Content_1_4_ViewController

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
    // Do any additional setup after loading the view.
    
    CALayer *imgLayer = [CALayer layer];
    imgLayer.contents = (id)[[UIImage imageNamed:@"zhihui4.jpg"] CGImage];
    [imgLayer setFrame:CGRectMake(0, -140, 944, 550)];
    if (IS_IPHONE5) {
        [imgLayer setFrame:CGRectMake(0, -80, 944, 550)];
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
    ani1.toValue = [NSNumber numberWithInt:-624];
    ani1.duration = 80;
    
    CABasicAnimation *ani2= [CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
    ani2.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    ani2.fromValue = [NSNumber numberWithInt:-624];
    ani2.toValue = [NSNumber numberWithInt:0];
    ani2.duration = 80;
    
    
    
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.animations = [NSArray arrayWithObjects:ani1, ani2, nil];
    group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    group.duration = 80;
    group.autoreverses = YES;
    group.repeatCount = 999;
    group.fillMode = kCAFillModeForwards;
    group.removedOnCompletion = NO;
    [self.imgLayer addAnimation:group forKey:@"position"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
