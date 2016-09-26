//
//  AppDelegate.m
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "AppDelegate.h"

#import "ComponentComposite.h"
#import "ComponentLeaf.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
	
	[self performLogic];
	
    return YES;
}

- (void)performLogic
{
	ComponentComposite *compositeOne = [[ComponentComposite alloc]init:@"composite 1" description:@"description"];
	
	ComponentComposite *compositeTwo = [[ComponentComposite alloc]init:@"composite 2" description:@"description"];
	
	ComponentComposite *compositeThree = [[ComponentComposite alloc]init:@"composite 3" description:@"description"];

	[compositeOne add:compositeTwo];
	
	[compositeTwo add:compositeThree];
	
	ComponentLeaf *leafOne = [[ComponentLeaf alloc]init:@"leaf 1" description:@"description"];
	
	[compositeOne add:leafOne];
	
	ComponentLeaf *leafTwo = [[ComponentLeaf alloc]init:@"leaf 2" description:@"description"];
	
	[compositeTwo add:leafTwo];
	
	ComponentLeaf *leafThree = [[ComponentLeaf alloc]init:@"leaf 3" description:@"description"];
	
	ComponentLeaf *leafFour = [[ComponentLeaf alloc]init:@"leaf 4" description:@"description"];

	[compositeThree add:leafThree];
	
	[compositeThree add:leafFour];
	
	[compositeOne print];
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
