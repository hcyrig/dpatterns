//
//  DictionaryIterator.m
//  Iterator
//
//  Created by hcyrig on 8/9/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "DictionaryIterator.h"

@interface DictionaryIterator ()
{
	NSInteger nextPosition;
}

@property (nonatomic, strong) NSMutableDictionary *itemsDictionary;

@end

@implementation DictionaryIterator

- (instancetype)initWithCollection:(NSMutableDictionary *)dictionary
{
	self = [super init];
	
	if (self)
	{
		_itemsDictionary = dictionary;
	}
	
	return self;
}

- (id)next
{
	id nextObject = [[self.itemsDictionary allValues] objectAtIndex:nextPosition];
	
	nextPosition++;
	
	return nextObject;
}

- (BOOL)hasNext
{
	if (nextPosition >= self.itemsDictionary.allValues.count)
	{
		return NO;
	}
	
	return YES;
}

- (void)remove
{
	id nextObject = [[self.itemsDictionary allValues] objectAtIndex:nextPosition];
	
	id removingKey = nil;
	
	for (id key in self.itemsDictionary.allKeys)
	{
		if (nextObject == [self.itemsDictionary valueForKey:key])
		{
			removingKey = key;
			break;
		}
	}
	
	[self.itemsDictionary removeObjectForKey:removingKey];
}

@end