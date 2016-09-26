//
//  Object.m
//  Strategy
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Object.h"

#import "Strategy.h"

#import "concreteDefaultStrategy.h"

@implementation Object

- (instancetype)initWithStrategy:(id<Strategy>)strategy
{
	self = [super init];
	
	if (self)
	{
		_strategy = strategy;
	}

	return self;
}

- (void)perfomeStrategy
{
	[self.strategy letsStrategy];
}

- (id<Strategy>)strategy
{
	if (!_strategy)
	{
		_strategy = [[concreteDefaultStrategy alloc]init];
	}
	
	return _strategy;
}

- (void)perfomeBaseLogicOne
{
	NSLog(@"done base logic one");
}

- (void)dealloc
{
	_strategy = nil;
}

@end
