//
//  Prototype.m
//  Prototype
//
//  Created by hcyrig on 8/18/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Prototype.h"

@implementation Prototype

- (void)name;
{
	NSAssert(NO, @"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (Prototype *)clone;
{
	NSAssert(NO, @"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));

	return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
	Prototype *prototype = [[[self class] allocWithZone:zone] init];
	
	return prototype;
}

@end
