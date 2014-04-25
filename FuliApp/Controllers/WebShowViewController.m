//
//  NewsShowViewController.m
//  zhonghan
//
//  Created by xiangpaopao on 13-8-9.
//  Copyright (c) 2013年 xiangpaopao. All rights reserved.
//

#import "WebShowViewController.h"


@interface WebShowViewController ()

@end

@implementation WebShowViewController

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
    
    for (UIView *view in [[[self.webView subviews] objectAtIndex:0] subviews]) {
        if ([view isKindOfClass:[UIImageView class]]) view.hidden = YES;
    }
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"webbg"]];
    self.webView.backgroundColor = [UIColor clearColor];
    self.webView.opaque = NO;

    for (UIView *view in [[[self.webView subviews] objectAtIndex:0] subviews]) {
        if ([view isKindOfClass:[UIImageView class]]) view.hidden = YES;
    }
    [self.webView setScalesPageToFit:YES];
    

    
   
}



-(BOOL) webView:(UIWebView *)inWeb shouldStartLoadWithRequest:(NSURLRequest *)inRequest navigationType:(UIWebViewNavigationType)inType {
    NSURL *url = inRequest.URL;
    NSString *urlString = url.absoluteString;
    
    NSLog(@"url %@", urlString);
    return YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [HUD hide:YES];
    self.title = [self.webView stringByEvaluatingJavaScriptFromString:@"document.title"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.webView.delegate = self;

    
    HUD = [[MBProgressHUD alloc] initWithView:self.view];
	[self.navigationController.view addSubview:HUD];
	HUD.labelText = @"请稍等...";
	
	HUD.delegate = self;
	[HUD show:YES];
    
    
    //不包含http头的从本地文件打开
    NSURLRequest *request = nil;
    if ([self.webStr hasPrefix:@"http"]) {
        NSURL *url=[NSURL URLWithString:self.webStr];
        request=[NSURLRequest requestWithURL:url];
    }else{
        NSString *htmlPath = [[[NSBundle mainBundle] bundlePath]stringByAppendingPathComponent:self.webStr];
        request=[NSURLRequest requestWithURL:[NSURL fileURLWithPath:htmlPath]];
    }
    [self.webView loadRequest:request];

}

@end
