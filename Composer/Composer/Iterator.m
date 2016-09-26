//
//  Iterator.m
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Iterator.h"

@implementation Iterator

- (BOOL)hasNext
{
	NSAssert(NO, @"%@ %@", NSStringFromClass([self class]),NSStringFromSelector(_cmd));
	
	return NO;
}

- (Component *)next
{
	NSAssert(NO, @"%@ %@", NSStringFromClass([self class]),NSStringFromSelector(_cmd));
	
	return nil;
}

- (void)remove
{
	NSAssert(NO, @"%@ %@", NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

@end
