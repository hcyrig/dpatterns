//
//  Iterator.m
//  Iterator
//
//  Created by hcyrig on 8/9/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Iterator.h"

@implementation Iterator

- (id)next
{
	NSAssert(NO, @"%@ %@",NSStringFromSelector(_cmd),NSStringFromClass([self class]));

	return nil;
}

- (BOOL)hasNext
{
	NSAssert(NO, @"%@ %@",NSStringFromSelector(_cmd),NSStringFromClass([self class]));
	
	return NO;
}

- (void)remove
{
	NSAssert(NO, @"%@ %@",NSStringFromSelector(_cmd),NSStringFromClass([self class]));
}

@end
