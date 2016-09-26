//
//  Flyweight.m
//  Flyweight
//
//  Created by hcyrig on 8/23/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Flyweight.h"

@implementation Flyweight

- (void)someMethod:(NSString *)outState
{
	NSAssert(NO, @"%@ %@", NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

@end
