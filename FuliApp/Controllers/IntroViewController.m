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
    UILabel *text1 = self.text1;
   
    
    //[img1 setFrame:CGRectMake(0, 0, 542, 600)];
    [img1.layer setAnchorPoint:CGPointMake(0.5, 0.5)];
    [img2.layer setAnchorPoint:CGPointMake(0.5, 0.5)];
    [text1 setText:@"东区CBD鸟瞰生态环境图"];
    
    [UIView animateWithDuration:7.0
                          delay:0
                        options:UIViewAnimationOptionCurveLinear animations:^{
                            img1.transform = CGAffineTransformTranslate(img1.transform, -26, 0);
                        }
                     completion:^(BOOL finished){
                         [text1 setText:@"整个花园办公场景图"];
                     }];
    
    
    
 
    
    [UIView animateWithDuration:3.8
                          delay:4.5
                        options:UIViewAnimationOptionCurveLinear animations:^{
                            img1.alpha = 0;
                            
                        }
                     completion:nil];

    //
    [UIView animateWithDuration:8.5
                          delay:4.8
                        options:UIViewAnimationOptionCurveLinear animations:^{
                            
                            img2.transform = CGAffineTransformScale(img2.transform, 1.1, 1.1);
                            
                        }
                     completion:^(BOOL finished){
                         [text1 setHidden:YES];
                     }];

   

    [UIView animateWithDuration:2.4
                          delay:13
                        options:UIViewAnimationOptionCurveLinear animations:^{
                            img2.alpha = 0;
                        }
                     completion:nil];

    //
   
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

-(IBAction)telAct:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://66687777"]];
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
