//
//  State.m
//  State
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "State.h"

@implementation State

- (void)firstMethod:(Context *)context
{
	NSAssert(NO, @"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)secondMethod:(Context *)context
{
	NSAssert(NO, @"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)thirdMethod:(Context *)context
{
	NSAssert(NO, @"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

@end
