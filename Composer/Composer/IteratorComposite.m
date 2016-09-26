//
//  IteratorComposite.m
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "IteratorComposite.h"

#import "ComponentComposite.h"

@implementation IteratorComposite
{
	NSMutableArray *stack;
}

- (instancetype)initWithIterator:(Iterator *)iterator
{
	self = [super init];
	
	if (self)
	{
		[[self stack] addObject:iterator];
	}

	return self;
}

- (void)pop
{
	[[self stack] removeLastObject];
}

- (void)push:(Iterator *)iterator
{
	[[self stack] addObject:iterator];
}

- (Iterator *)peek
{
	return [[self stack] lastObject];
}

- (NSMutableArray *)stack
{
	if (!stack)
	{
		stack = [[NSMutableArray alloc]init];
	}
	
	return stack;
}

- (void)dealloc
{
	[stack removeAllObjects];
	stack = nil;
}

- (void)remove
{

}

- (BOOL)hasNext
{
	if (stack.count)
	{
		Iterator *iterator = [self peek];
	
		if ([iterator hasNext])
		{
			return YES;
		}

		[self pop];
		return [self hasNext];
	}

	return NO;
}

- (Component *)next
{
	if ([self hasNext])
	{
		Iterator *iterator = [self peek];
		
		Component *component = [iterator next];
		
		if ([component isMemberOfClass:[ComponentComposite class]])
		{
			[self push:component.iterator];
		}
		
		return component;
	}
	
	return nil;
}

@end