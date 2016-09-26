//
//  AggregatorArray.m
//  Iterator
//
//  Created by hcyrig on 8/10/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "AggregatorArray.h"

#import "ArrayIterator.h"

@interface AggregatorArray ()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation AggregatorArray

- (instancetype)init
{
	self = [super init];
	
	if (self)
	{
		_array = [[NSMutableArray alloc] initWithObjects:@"OneA",@"TwoA",@"ThreeA",nil];
	}
	
	return self;
}

- (Iterator *)iterator
{
	return [[ArrayIterator alloc]initWithCollection:self.array];
}

@end
