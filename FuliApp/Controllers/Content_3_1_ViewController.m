//
//  Content_3_1_1_ViewController.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-24.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "Content_3_1_ViewController.h"

@interface Content_3_1_ViewController ()

@end

@implementation Content_3_1_ViewController

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
    [self.tarBtn1 setSelected:YES];
    [self.tarBtn1 setUserInteractionEnabled:NO];
    
    self.webStr = @"http://res.airad.com/vtour/tour.html";
    //self.webStr = @"http://qq.com";
}



-(IBAction)btn1Act:(id)sender
{
    [self.tarBtn1 setSelected:YES];
    [self.tarBtn2 setSelected:NO];
    [self.tarBtn1 setUserInteractionEnabled:NO];
    [self.tarBtn2 setUserInteractionEnabled:YES];
    
    self.webStr = @"http://res.airad.com/vtour/tour.html";
    
    NSURL *url=[NSURL URLWithString:self.webStr];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    [HUD show:YES];
    
}
-(IBAction)btn2Act:(id)sender
{
    [self.tarBtn1 setSelected:NO];
    [self.tarBtn2 setSelected:YES];
    [self.tarBtn1 setUserInteractionEnabled:YES];
    [self.tarBtn2 setUserInteractionEnabled:NO];
    
    self.webStr = @"webPage/p_3_1_2_1.html";
    
    NSString *htmlPath = [[[NSBundle mainBundle] bundlePath]stringByAppendingPathComponent:self.webStr];
   
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:htmlPath]]];
    [HUD show:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
