//
//  Collection.m
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Collection.h"

#import "IteratorCollection.h"

@interface Collection ()
{
	NSMutableArray *array;
}

@end

@implementation Collection

- (Iterator *)iterator
{
	return [[IteratorCollection alloc]initWithCollection:[self array]];
}

- (NSMutableArray *)array
{
	if (!array)
	{
		array = [[NSMutableArray alloc]init];
	}

	return array;
}

@end
