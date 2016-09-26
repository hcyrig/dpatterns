//
//  FlyweightContainer.m
//  Flyweight
//
//  Created by hcyrig on 8/23/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "FlyweightContainer.h"

#import "FlyweightConcrete.h"

@interface FlyweightContainer ()
{
	NSMutableDictionary *flyweights;
}

@end

@implementation FlyweightContainer

- (instancetype)init
{
	self = [super init];
	
	if (self)
	{
		flyweights = [[NSMutableDictionary alloc]init];
	}

	return self;
}

- (Flyweight *)flyweightFromKey:(NSString *)key
{
	Flyweight *tempFlyweight = [flyweights objectForKey:key];
	
	if (!tempFlyweight)
	{
		tempFlyweight = [[FlyweightConcrete alloc]initWithState:key];
		
		[flyweights setObject:tempFlyweight forKey:key];
	}
	
	return tempFlyweight;
}

@end
