//
//  StateThird.m
//  State
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "StateThird.h"

#import "Context.h"
#import "StateFirst.h"

@implementation StateThird

- (void)firstMethod:(Context *)context
{
	NSLog(@"Not support first state method");
}

- (void)secondMethod:(Context *)context
{
	NSLog(@"Not support second state method");
}

- (void)thirdMethod:(Context *)context
{
	NSLog(@"Change state to first");
	
	[context setState:[[StateFirst alloc]init]];
}

@end
