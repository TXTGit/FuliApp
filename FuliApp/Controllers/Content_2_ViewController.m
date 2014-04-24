//
//  Content_2_ViewController.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-10.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "Content_2_ViewController.h"
#import "UIViewController+MMDrawerController.h"
#import "MMDrawerBarButtonItem.h"
#import "NSString+FontAwesome.h"

@interface Content_2_ViewController ()

@end

@implementation Content_2_ViewController

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
	
    [self setupRightMenuButton];
    [self setupBackButton];
   
}

-(void)setupRightMenuButton{
    
    UIButton* rightButton= [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [rightButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    [rightButton.titleLabel setFont:[UIFont fontWithName:kFontAwesomeFamilyName size:22]];
    [rightButton setTitle:[NSString fontAwesomeIconStringForIconIdentifier:@"fa-bars"] forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(rightDrawerButtonPress:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem* rightDrawerButton = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    [self.navigationItem setRightBarButtonItem:rightDrawerButton animated:YES];
}

-(void)rightDrawerButtonPress:(id)sender{
    [self toggleDrawerSide:MMDrawerSideRight animated:YES completion:nil];

}


-(void)setupBackButton{
    UIButton* leftButton= [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [leftButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [leftButton.titleLabel setFont:[UIFont fontWithName:kFontAwesomeFamilyName size:26]];
    
    [leftButton setTitle:[NSString fontAwesomeIconStringForIconIdentifier:@"fa-angle-left"] forState:UIControlStateNormal];
    
    
    [leftButton addTarget:self action:@selector(BackButtonPress:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem* leftDrawerButton = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    [self.navigationItem setLeftBarButtonItem:leftDrawerButton animated:YES];
}

#pragma mark - Button Handlers
-(void)BackButtonPress:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
