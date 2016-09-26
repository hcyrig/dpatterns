//
//  FindThreePeople.m
//  AbstractFactory
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "FindThreePeople.h"

#import "AbstractFactoryThree.h"
#import "KidObject.h"
#import "ManObject.h"
#import "WomanObject.h"

@interface FindThreePeople ()
{
	AbstractFactoryInterface *factory;
}

@end

@implementation FindThreePeople

- (void)find:(NSString *)man
{
	factory = [[AbstractFactoryThree alloc]init];
	
	if ([[man lowercaseString] isEqualToString:[@"Man" lowercaseString]])
	{
		Object *manObject = [[ManObject alloc] initWithFactory:factory];
		[manObject make];
	}else if ([[man lowercaseString] isEqualToString:[@"Woman" lowercaseString]])
	{
		Object *womanObject = [[WomanObject alloc] initWithFactory:factory];
		[womanObject make];
	}
	else if([[man lowercaseString] isEqualToString:[@"Kid" lowercaseString]])
	{
		Object *kidObject = [[KidObject alloc] initWithFactory:factory];
		[kidObject make];
	}else
	{
		NSLog(@"\nIncorrect type!\n");
	}
}

@end
