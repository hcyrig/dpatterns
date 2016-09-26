//
//  Adaptee.m
//  Adapter
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Adaptee.h"

@implementation Adaptee

- (void)adapteeMethodOne
{
	NSAssert(NO, @"%@ %@", NSStringFromSelector(_cmd), NSStringFromClass([self class]));}

- (void)adapteeMethodTwo
{
	NSAssert(NO, @"%@ %@", NSStringFromSelector(_cmd), NSStringFromClass([self class]));}

- (void)adapteeMethodThree
{
	NSAssert(NO, @"%@ %@", NSStringFromSelector(_cmd), NSStringFromClass([self class]));
}

@end
