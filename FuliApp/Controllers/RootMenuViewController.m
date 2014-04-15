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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
   
    
    
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
