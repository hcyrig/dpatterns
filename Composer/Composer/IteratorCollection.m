//
//  IteratorCollection.m
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "IteratorCollection.h"

@interface IteratorCollection ()
{
	NSInteger position;
	NSArray *collection;
}

@end

@implementation IteratorCollection

- (instancetype)initWithCollection:(NSMutableArray *)tCollection;
{
	self = [super init];
	
	if (self)
	{
		collection = tCollection;
	}
	
	return self;
}

- (BOOL)hasNext
{
	if (position >= collection.count)
	{
		return NO;
	}

	return YES;
}

- (Component *)next
{
	Component *component = [collection objectAtIndex:position];
	
	position++;
	
	return component;
}

- (void)remove
{

}

@end