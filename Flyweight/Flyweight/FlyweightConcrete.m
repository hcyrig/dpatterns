//
//  ConcreteFlyweight.m
//  Flyweight
//
//  Created by hcyrig on 8/23/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "FlyweightConcrete.h"

@interface FlyweightConcrete ()
{
	NSString *inState;
}

@end

@implementation FlyweightConcrete

- (instancetype)initWithState:(NSString *)tInState;
{
	self = [super init];
	
	if (self)
	{
		inState = tInState;
	}

	return self;
}

- (void)someMethod:(NSString *)outState
{
	NSLog(@"\nClass:%@ method:%@ in:%@ out:%@ states.",NSStringFromClass([self class]),NSStringFromSelector(_cmd),inState,outState);
}

@end