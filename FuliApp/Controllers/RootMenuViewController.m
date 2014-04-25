//
//  RootMenuViewController.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-10.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "RootMenuViewController.h"
#import "Content_2_ViewController.h"
#import "Content_2C_ViewController.h"
#import "Content_2R_ViewController.h"
#import "IntroViewController.h"
#import "MMDrawerController.h"

@interface RootMenuViewController ()

@end

@implementation RootMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
     [self.navigationController setNavigationBarHidden:YES animated:YES];
    //[[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
    
}


-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    //[[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// intUI
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"webbg"]];
    [self.navigationController setNavigationBarHidden:YES];
    //[[UIApplication sharedApplication] setStatusBarHidden:YES];

    
    if ([self respondsToSelector:@selector(setNeedsStatusBarAppearanceUpdate)]) {
        // iOS 7
        [self prefersStatusBarHidden];
        [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];
    }
    
    //intro page
    IntroViewController *introView = [self.storyboard instantiateViewControllerWithIdentifier:@"introViewController"];
    [self presentViewController:introView animated:NO completion:nil];
    [NSTimer scheduledTimerWithTimeInterval: 13.4
                                     target: self
                                   selector: @selector(timerAct)
                                   userInfo: nil
                                    repeats: NO];
}


- (BOOL)prefersStatusBarHidden
{
    return YES;//隐藏为YES，显示为NO
}

- (void)timerAct
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(IBAction)pushAction2:(id)sender{
    
    Content_2C_ViewController *content_2C = [self.storyboard instantiateViewControllerWithIdentifier:@"Content_2C"];
    Content_2R_ViewController *content_2R = [self.storyboard instantiateViewControllerWithIdentifier:@"Content_2R"];
    
    Content_2_ViewController * drawerController = [[Content_2_ViewController alloc]
                                             initWithCenterViewController:content_2C
                                             leftDrawerViewController:nil
                                             rightDrawerViewController:content_2R];
    
    

    [drawerController setMaximumRightDrawerWidth:120];
    [drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    
    [self.navigationController pushViewController:drawerController animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
