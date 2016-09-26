//
//  Component.m
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Component.h"

@implementation Component

- (void)print
{
	NSAssert(NO, @"%@ %@", NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (NSString *)name
{
	NSAssert(NO, @"%@ %@", NSStringFromClass([self class]),NSStringFromSelector(_cmd));
	
	return nil;
}

- (NSString *)descriptions
{
	NSAssert(NO, @"%@ %@", NSStringFromClass([self class]),NSStringFromSelector(_cmd));
	
	return nil;
}

- (Component *)component:(NSInteger)idComponent
{
	NSAssert(NO, @"%@ %@", NSStringFromClass([self class]),NSStringFromSelector(_cmd));

	return nil;
}

- (void)add:(Component *)component
{
	NSAssert(NO, @"%@ %@", NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)removeComponent:(Component *)component
{
	NSAssert(NO, @"%@ %@", NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (Iterator *)iterator
{
	NSAssert(NO, @"%@ %@", NSStringFromClass([self class]),NSStringFromSelector(_cmd));
	
	return nil;
}

@end
