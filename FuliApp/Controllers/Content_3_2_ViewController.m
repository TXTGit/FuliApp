//
//  Content_3_2_ViewController.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-24.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "Content_3_2_ViewController.h"

@interface Content_3_2_ViewController ()

@end

@implementation Content_3_2_ViewController

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
    
    self.webStr = @"http://emms.airad.com/preview/fuli/pagesFuliThumbList/1";

}



-(IBAction)btn1Act:(id)sender
{
    [self.tarBtn1 setSelected:YES];
    [self.tarBtn2 setSelected:NO];
    [self.tarBtn1 setUserInteractionEnabled:NO];
    [self.tarBtn2 setUserInteractionEnabled:YES];
    
    self.webStr = @"http://emms.airad.com/preview/fuli/pagesFuliThumbList/1";
    
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
    
    self.webStr = @"http://emms.airad.com/preview/fuli/pagesFuliThumbList/2";
    
    NSURL *url=[NSURL URLWithString:self.webStr];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    [HUD show:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
