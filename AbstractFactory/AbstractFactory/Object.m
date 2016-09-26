//
//  Object.m
//  AbstractFactory
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Object.h"

@implementation Object

- (void)make
{
	NSAssert(NO,@"Please implement abstract method %@ in class",NSStringFromSelector(_cmd),NSStringFromClass([self class]));
}

@end
