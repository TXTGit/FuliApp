//
//  IntroViewController.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-21.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "IntroViewController.h"
#import "RootMenuViewController.h"

@interface IntroViewController ()
{
    NSTimer *myTimer;
}

@end

@implementation IntroViewController

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
    [self.navigationController setNavigationBarHidden:YES];
    
    UIImageView *img1 = self.img1;
    UIImageView *img2 = self.img2;
    
   
    //[img1 setFrame:CGRectMake(0, 0, 542, 600)];
    [img1.layer setAnchorPoint:CGPointMake(0.5, 0.5)];
    [img2.layer setAnchorPoint:CGPointMake(0.5, 0.5)];
    [self.text1 setText:@"东区CBD鸟瞰生态环境图"];
    myTimer = [NSTimer scheduledTimerWithTimeInterval:3.1 target:self selector:@selector(changeText) userInfo:nil repeats:NO];
    
    
    [UIView animateWithDuration:4.8
                          delay:0
                        options:UIViewAnimationOptionCurveLinear animations:^{
                            img1.transform = CGAffineTransformTranslate(img1.transform, -28, 0);
                        }
                     completion:nil];
    
    
    [UIView animateWithDuration:2.6
                          delay:2.2
                        options:UIViewAnimationOptionCurveLinear animations:^{
                            img1.alpha = 0;
                            
                        }
                     completion:nil];

    //
    [UIView animateWithDuration:6.6
                          delay:2.3
                        options:UIViewAnimationOptionCurveLinear animations:^{
                            
                            img2.transform = CGAffineTransformScale(img2.transform, 1.13, 1.13);
                            
                        }
                     completion:^(BOOL finished){
                         [self.text1 setHidden:YES];
                     }];

   

    [UIView animateWithDuration:2.4
                          delay:7.7
                        options:UIViewAnimationOptionCurveLinear animations:^{
                            img2.alpha = 0;
                        }
                     completion:nil];

    //
   
}
-(void) changeText
{
    [self.text1 setText:@"整个花园办公场景图"];
    [myTimer setFireDate:[NSDate distantFuture]];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}




@end
