//
//  ObjectDecorator.m
//  Decorator
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "ObjectDecorator.h"

@implementation ObjectDecorator

- (instancetype)initWithObject:(Object *)object
{
	self = [super init];

	if (self)
	{
		concreteObject = object;
	}
	
	return self;
}

- (NSString *)someAbstractethod
{
	return [concreteObject someAbstractethod];
}

@end
