//
//  arrayIterator.m
//  Iterator
//
//  Created by hcyrig on 8/9/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "ArrayIterator.h"

@interface ArrayIterator ()
{
	NSInteger nextPosition;
}

@property (nonatomic, strong) NSMutableArray *itemsArray;

@end

@implementation ArrayIterator

- (instancetype)initWithCollection:(NSMutableArray *)array
{
	self = [super init];
	
	if (self)
	{
		_itemsArray = array;
	}

	return self;
}

- (id)next
{
	id nextObject = [self.itemsArray objectAtIndex:nextPosition];
	
	nextPosition++;
	
	return nextObject;
}

- (BOOL)hasNext
{
	if (nextPosition >= self.itemsArray.count)
	{
		return NO;
	}

	return YES;
}

- (void)remove
{
	[self.itemsArray removeObjectAtIndex:nextPosition];
}

@end