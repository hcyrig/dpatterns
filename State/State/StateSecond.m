//
//  StateSecond.m
//  State
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "StateSecond.h"

#import "Context.h"
#import "StateThird.h"

@implementation StateSecond

- (void)firstMethod:(Context *)context
{
	NSLog(@"Not support first state method");
}

- (void)secondMethod:(Context *)context
{
	NSLog(@"Change state to third");
	
	[context setState:[[StateThird alloc]init]];
}

- (void)thirdMethod:(Context *)context
{
	NSLog(@"Not support third state method");
}

@end
