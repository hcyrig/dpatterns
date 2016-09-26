//
//  Object.m
//  Decorator
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Object.h"

@implementation Object

- (NSString *)someAbstractethod
{
	NSAssert(NO, @"Please release abstract method \"%@\" from class \"%@\"",NSStringFromSelector(_cmd),NSStringFromClass([self class]));

	return nil;
}

@end
