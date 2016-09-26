//
//  ObjectOne.m
//  Strategy
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "ObjectOne.h"

#import "concreteStrategyOne.h"

@implementation ObjectOne

- (instancetype)init
{
	self = [super init];
	
	if (self)
	{
		self.strategy = [[concreteStrategyOne alloc]init];
	}
	
	return self;
}

@end
