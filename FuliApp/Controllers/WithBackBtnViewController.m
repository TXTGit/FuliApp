//
//  WithBackBtnViewController.m
//  zhonghan
//
//  Created by xiangpaopao on 13-9-22.
//  Copyright (c) 2013年 xiangpaopao. All rights reserved.
//

#import "NSString+FontAwesome.h"
#import "WithBackBtnViewController.h"

@interface WithBackBtnViewController ()

@end

@implementation WithBackBtnViewController

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
  [self setupBackButton];
}

-(void)setupBackButton{
    //UIImage* image= [UIImage imageNamed:@"backBtn"];
    //UIImage* imageOn= [UIImage imageNamed:@"back_btn_on"];
    UIButton* leftButton= [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    //[leftButton setBackgroundImage:image forState:UIControlStateNormal];
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
