//
//  StateBegin.m
//  State
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "StateFirst.h"

#import "Context.h"
#import "StateSecond.h"

@implementation StateFirst

- (void)firstMethod:(Context *)context
{
	NSLog(@"Change state to second");

	[context setState:[[StateSecond alloc]init]];
}

- (void)secondMethod:(Context *)context
{
	NSLog(@"Not support second state method");
}

- (void)thirdMethod:(Context *)context
{
	NSLog(@"Not support third state method");
}

@end
