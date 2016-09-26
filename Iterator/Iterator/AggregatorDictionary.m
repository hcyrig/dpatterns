//
//  AggregatorDictionary.m
//  Iterator
//
//  Created by hcyrig on 8/9/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "AggregatorDictionary.h"

#import "DictionaryIterator.h"

@interface AggregatorDictionary ()

@property (nonatomic, strong) NSMutableDictionary *dictionary;

@end

@implementation AggregatorDictionary

- (instancetype)init
{
	self = [super init];

	if (self)
	{
	
	_dictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"OneD",@"OneKeyD",@"TwoD",@"TwoKeyD",@"ThreeD",@"ThreeKeyD",nil];

	}

	return self;
}

- (Iterator *)iterator
{
	return [[DictionaryIterator alloc]initWithCollection:self.dictionary];
}

@end
