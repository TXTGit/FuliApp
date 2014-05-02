//
//  AppDelegate.m
//  FuliApp
//
//  Created by xiangpaopao on 14-4-3.
//  Copyright (c) 2014年 xiangpaopao. All rights reserved.
//

#import "AppDelegate.h"
#import "UncaughtExceptionHandler.h"
#import "MobClick.h"
#import "RavenClient.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //统计
   // [MobClick startWithAppkey:@"5362ee8f56240bd7f2071a74" reportPolicy:SEND_INTERVAL channelId:@""];
    //监控
    [RavenClient clientWithDSN:@"http://2d1458aeb80444639775a169c9c82a59:e5e567cfafb74218867e186c09354fcc@sentry.airad.com/16"];
    [[RavenClient sharedClient] setupExceptionHandler];
    
    InstallUncaughtExceptionHandler();
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
