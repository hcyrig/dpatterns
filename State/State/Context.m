//
//  Context.m
//  State
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Context.h"

#import "State.h"
#import "StateFirst.h"

@interface Context ()
{
	State *state;
}

@end

@implementation Context

- (instancetype)init
{
	self = [super init];
	
	if (self)
	{
		state = [[StateFirst alloc]init];
	}

	return self;
}

- (void)setState:(State *)tState
{
	state = tState;
}

- (void)someFirstMethod
{
	[state firstMethod:self];
}

- (void)someSecondMethod
{
	[state secondMethod:self];
}

- (void)someThirdMethod
{
	[state thirdMethod:self];
}

- (void)dealloc
{
	self.state = nil;
}

@end