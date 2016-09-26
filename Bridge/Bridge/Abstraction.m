//
//  Abstraction.m
//  Bridge
//
//  Created by hcyrig on 8/16/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Abstraction.h"

#import "Bridge.h"

@implementation Abstraction

- (void)someAbstractMethod
{
	NSAssert(NO, @"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)someAbstractMethod:(NSString *)string
{
	NSAssert(NO, @"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

@end
