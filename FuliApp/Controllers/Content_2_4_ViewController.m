//
//  Content_2_4_ViewController.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-11.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "Content_2_4_ViewController.h"

@interface Content_2_4_ViewController ()

@end

@implementation Content_2_4_ViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)telAct:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"拨打电话" message:@"您确定要拨打富力城电话吗?" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alert show];
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex==1){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://66687777"]];
    }
}
@end
