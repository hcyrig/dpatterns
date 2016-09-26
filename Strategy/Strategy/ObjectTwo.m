//
//  ObjectTwo.m
//  Strategy
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "ObjectTwo.h"

#import "concreteStrategyTwo.h"

@implementation ObjectTwo

- (instancetype)init
{
	self = [super init];
	
	if (self)
	{
		self.strategy = [[concreteStrategyTwo alloc]init];
	}
	
	return self;
}

@end
