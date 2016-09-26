//
//  ComponentList.m
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "ComponentLeaf.h"

#import "IteratorNull.h"

@interface ComponentLeaf ()
{
	NSString *name;
	NSString *description;
}

@end

@implementation ComponentLeaf

- (instancetype)init:(NSString *)tName description:(NSString *)tDescription
{
	self = [super init];
	
	if (self)
	{
		name = tName;
		description = tDescription;
	}

	return self;
}

- (NSString *)name
{
	return name;
}

- (NSString *)descriptions
{
	return description;
}

- (Iterator *)iterator
{
	return [[IteratorNull alloc]init];
}


- (void)print
{
	printf("\n%s %s",[[self name] UTF8String],[[self descriptions] UTF8String]);
}

@end