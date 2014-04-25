//
//  Content_2R_ViewController.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-10.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "Content_2R_ViewController.h"
#import "UIViewController+MMDrawerController.h"
#import "Content_2_1_ViewController.h"
#import "Content_2_2_ViewController.h"
#import "Content_2_3_ViewController.h"
#import "Content_2_4_ViewController.h"


@interface Content_2R_ViewController ()

@end

@implementation Content_2R_ViewController

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
    [self setCenterViewAtIndex:0];
    self.mm_drawerController.title = @"超越全球的规划设计";
}

- (IBAction)menu1Action:(id)sender
{
    [self setCenterViewAtIndex:0];
    self.mm_drawerController.title = @"超越全球的规划设计";
}
- (IBAction)menu2Action:(id)sender
{
   [self setCenterViewAtIndex:1];
    self.mm_drawerController.title = @"交通";
}
- (IBAction)menu3Action:(id)sender
{
    [self setCenterViewAtIndex:2];
    self.mm_drawerController.title = @"区位";
}
- (IBAction)menu4Action:(id)sender
{
    [self setCenterViewAtIndex:3];
    self.mm_drawerController.title = @"地区电话";
}

- (void)setCenterViewAtIndex:(NSUInteger)index
{
    NSMutableArray *CenterViews = [[NSMutableArray alloc] initWithCapacity:5];
    
    Content_2_1_ViewController *contentView1 = [self.storyboard instantiateViewControllerWithIdentifier:@"Content_2_1"];
    [CenterViews addObject:contentView1];
    Content_2_2_ViewController *contentView2 = [self.storyboard instantiateViewControllerWithIdentifier:@"Content_2_2"];
    [CenterViews addObject:contentView2];
    Content_2_3_ViewController *contentView3 = [self.storyboard instantiateViewControllerWithIdentifier:@"Content_2_3"];
    [CenterViews addObject:contentView3];
    Content_2_4_ViewController *contentView4 = [self.storyboard instantiateViewControllerWithIdentifier:@"Content_2_4"];
    [CenterViews addObject:contentView4];
    
    [self.mm_drawerController setCenterViewController:[CenterViews objectAtIndex:index]
                                   withCloseAnimation:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
