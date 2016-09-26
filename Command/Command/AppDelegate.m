//
//  AppDelegate.m
//  Command
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "AppDelegate.h"

#import "commandOnState.h"
#import "commandOffState.h"
#import "concreateObject.h"
#import "InitializerOne.h"
#import "InitializerThree.h"
#import "InitializerTwo.h"
#import "macroCommad.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
	
	[self perfomeLogicOne];
	
	[self perfomeLogicTwo];
	
	[self perfomeLogicThree];
	
    return YES;
}

- (void)perfomeLogicOne
{
	concreateObject *object = [[concreateObject alloc]init];
	
	commandOnState *onCommand = [[commandOnState alloc]init:object];
	commandOffState *offCommand = [[commandOffState alloc]init:object];
	
	InitializerOne *initializaer = [[InitializerOne alloc]init:onCommand offCommand:offCommand];
	
	[initializaer onPerfome];
	[initializaer offPerfome];
	[initializaer undoPerfome];
}

- (void)perfomeLogicTwo
{
	concreateObject *object = [[concreateObject alloc]init];
	
	commandOnState *onCommand = [[commandOnState alloc]init:object];
	commandOffState *offCommand = [[commandOffState alloc]init:object];
	
	InitializerTwo *initializaer = [[InitializerTwo alloc]init:onCommand offCommand:offCommand];
	
	[initializaer onPerfome];
	[initializaer offPerfome];
	[initializaer offPerfome];
	[initializaer offPerfome];
	[initializaer onPerfome];
	
	[initializaer undoPerfome];
	[initializaer undoPerfome];
	[initializaer undoPerfome];
	[initializaer undoPerfome];
	[initializaer undoPerfome];
	
	//nothing happens because it request have inside empty undoarray
	[initializaer undoPerfome];
}

- (void)perfomeLogicThree
{
	concreateObject *object = [[concreateObject alloc]init];
	
	commandOnState *onCommand = [[commandOnState alloc]init:object];
	commandOffState *offCommand = [[commandOffState alloc]init:object];
	macroCommad *macroComm = [[macroCommad alloc]initWithCommands:[NSArray arrayWithObjects:onCommand,offCommand, nil]];
	
	InitializerTwo *initializaer = [[InitializerTwo alloc]init:onCommand offCommand:offCommand];
	
	[initializaer onPerfome];
	[initializaer offPerfome];
	[initializaer offPerfome];
	[initializaer offPerfome];
	[initializaer onPerfome];
	
	[initializaer undoPerfome];
	[initializaer undoPerfome];
	[initializaer undoPerfome];
	[initializaer undoPerfome];
	[initializaer undoPerfome];
	
	//nothing happens because it request have inside empty undoarray
	[initializaer undoPerfome];
	
	InitializerThree *macroInitializaer = [[InitializerThree alloc]initWithCommand:macroComm];

	[macroInitializaer perfome];
	
	[macroInitializaer undoPerfome];
}


- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
