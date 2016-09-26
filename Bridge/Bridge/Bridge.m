//
//  Bridge.m
//  Bridge
//
//  Created by hcyrig on 8/16/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Bridge.h"

@implementation Bridge

- (void)someMethod
{
	NSAssert(NO, @"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)someMethod:(NSString *)string
{
	NSAssert(NO, @"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

@end
