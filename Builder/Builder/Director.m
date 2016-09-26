//
//  Director.m
//  Builder
//
//  Created by hcyrig on 8/16/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Director.h"

#import "Builder.h"

@interface Director ()
{
	Builder *builder;
}

@end

@implementation Director

- (instancetype)initWithBuilder:(Builder *)tBuilder
{
	self = [super init];
	
	if (self)
	{
		builder = tBuilder;
	}
	
	return self;
}

- (id)makeEntity
{
	[builder makeHead];
	
	[builder makeBody];
	
	[builder makeFoot];

	return [builder entity];
}

@end
