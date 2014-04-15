//
//  Content_2_2_ViewController.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-10.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "Content_2_2_ViewController.h"

@interface Content_2_2_ViewController ()


@property (nonatomic, retain) UIScrollView *scrollView;
@property (nonatomic, retain) UIImageView *imageView;
-(IBAction)tab1Action:(id)sender;
-(IBAction)tab2Action:(id)sender;

@end


@implementation Content_2_2_ViewController

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
    
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 46, ScreenWidth , ScreenHeight -64 - 46)];
    [scrollView setBackgroundColor:[UIColor whiteColor]];
    [scrollView setDelegate:self];
    [scrollView setShowsHorizontalScrollIndicator:NO];
    [scrollView setShowsVerticalScrollIndicator:NO];
    [scrollView setMaximumZoomScale:1.5];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"daolu.jpg"]];
    
    CGRect rect;
    rect.size.width = ScreenWidth;
    rect.size.height = imageView.image.size.height * (ScreenWidth / imageView.image.size.width);
    
    [imageView setFrame:rect];
    
    [scrollView setContentSize:[imageView frame].size];
    [scrollView setMinimumZoomScale:[scrollView frame].size.width / [imageView frame].size.width];
    [scrollView setZoomScale:[scrollView minimumZoomScale]];
    [scrollView addSubview:imageView];
    
    [[self view] addSubview:scrollView];
    self.scrollView = scrollView;
    self.imageView = imageView;
}

- (void)finishCropping {
	float zoomScale = 2.0 / [self.scrollView zoomScale];
	
	CGRect rect;
	rect.origin.x = [self.scrollView contentOffset].x * zoomScale;
	rect.origin.y = [self.scrollView contentOffset].y * zoomScale;
	rect.size.width = [self.scrollView bounds].size.width * zoomScale;
	rect.size.height = [self.scrollView bounds].size.height * zoomScale;
	
	CGImageRef cr = CGImageCreateWithImageInRect([[self.imageView image] CGImage], rect);
	CGImageRelease(cr);
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
	return self.imageView;
}

-(IBAction)tab1Action:(id)sender
{
    [self.imageView setImage:[UIImage imageNamed:@"daolu.jpg"]];
}

-(IBAction)tab2Action:(id)sender
{
    [self.imageView setImage:[UIImage imageNamed:@"guidao.jpg"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
