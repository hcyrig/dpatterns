//
//  Builder.m
//  Builder
//
//  Created by hcyrig on 8/16/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Builder.h"

@implementation Builder

- (void)makeHead
{
	NSAssert(NO,@"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)makeBody
{
	NSAssert(NO,@"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)makeFoot
{
	NSAssert(NO,@"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

@end
