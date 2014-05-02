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
#import "MBProgressHUD.h"
#import "Reachability.h"

@interface RootMenuViewController ()
{
    MBProgressHUD *HUD;
}

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
    //检测网络
    [self checkNetwork];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    //self.navigationController.navigationBar.alpha = 0.01;
}


-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
	// intUI
    [self initUI];
    
    
    //intro page
    IntroViewController *introView = [self.storyboard instantiateViewControllerWithIdentifier:@"introViewController"];
    [self presentViewController:introView animated:NO completion:nil];
    [NSTimer scheduledTimerWithTimeInterval: 13.0
                                     target: self
                                   selector: @selector(timerAct)
                                   userInfo: nil
                                    repeats: NO];
   
    [introView.telBtn addTarget:self action:@selector(telAction) forControlEvents:UIControlEventTouchUpInside];
    
    
}
-(void)telAction
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"拨打电话" message:@"您确定要拨打富力城电话吗?" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alert show];
}
-(void)initUI
{
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"webbg"]];
    //[self.navigationController setNavigationBarHidden:YES];
    if (IOS_VERSION < 7) {
        
        self.view.bounds = CGRectMake(0, -20, self.view.frame.size.width, self.view.frame.size.height );
        
    }
    
    if ([self respondsToSelector:@selector(setNeedsStatusBarAppearanceUpdate)]) {
        // iOS 7
        //[self prefersStatusBarHidden];
        [self setNeedsStatusBarAppearanceUpdate];
        [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];
    }
    
    UIImageView *bannerView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"index_banner.jpg"]];
    [bannerView setContentMode:UIViewContentModeCenter];
    if (IS_IPHONE5) {
        [bannerView setFrame:CGRectMake(0, 20, 320, 255)];
    }else{
        if (IOS_VERSION < 7) {
            [bannerView setFrame:CGRectMake(0, -40, 320, 200)];
            [self.statusMask setHidden:YES];
        }else{
            [bannerView setFrame:CGRectMake(0, -10, 320, 220)];
        }
        
    }
    [self.view insertSubview:bannerView atIndex:0];
    
    HUD = [[MBProgressHUD alloc] initWithView:self.view];
    HUD.mode = MBProgressHUDModeCustomView;
    
    [self.navigationController.view addSubview:HUD];
	
}

-(void)checkNetwork
{
    Reachability *CurReach = [Reachability reachabilityForInternetConnection];
    switch ([CurReach currentReachabilityStatus]) {
        case NotReachable://没有网络
        {
            //添加你需要的操作
            HUD.labelText = @"网络异常";
            HUD.detailsLabelText = @"部分功能不能正常使用";
            [HUD show:YES];
            [HUD hide:YES afterDelay:2.6];
            NSLog(@"NotReachable");
            break;
        }

        case ReachableViaWiFi://有wifi

        {//添加你需要的操作

            break;

        }
        case ReachableViaWWAN://有3G
        {
            //添加你需要的操作

            break;
        }
        default:

            break;
    }
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex==1){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://66687777"]];
    }
}

- (BOOL)prefersStatusBarHidden
{
    return NO;//隐藏为YES，显示为NO
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
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
-(IBAction)pushAction4:(id)sender
{
    HUD.labelText = @"栏目维护中...";
    HUD.detailsLabelText = nil;
	[HUD show:YES];
    [HUD hide:YES afterDelay:2];
   
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
