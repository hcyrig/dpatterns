//
//  TargetObject.m
//  Adapter
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "TargetObject.h"

@implementation TargetObject

- (void)targetMethodOne
{
	NSAssert(NO, @"%@ %@", NSStringFromSelector(_cmd), NSStringFromClass([self class]));
}

- (void)targetMethodTwo
{
	NSAssert(NO, @"%@ %@", NSStringFromSelector(_cmd), NSStringFromClass([self class]));
}

- (void)targetMethodThree
{
	NSAssert(NO, @"%@ %@", NSStringFromSelector(_cmd), NSStringFromClass([self class]));
}

@end
