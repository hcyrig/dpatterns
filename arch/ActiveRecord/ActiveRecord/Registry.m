//
//  Registry.m
//  ActiveRecord
//
//  Created by hcyrig on 7/28/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Registry.h"

@interface Registry ()

@property (nonatomic, strong) NSMutableArray *records;

@end

@implementation Registry

+ (instancetype)instance
{
	static Registry *instance = nil;
	
	//осуществлять диспачерезацию ()
	static dispatch_once_t once_t;

	dispatch_once(&once_t, ^{
	
		instance = [[Registry alloc]init];
		instance.records = [[NSMutableArray alloc]init];
		
	});

	return instance;
}

+ (NSInteger)addActiveRecord:(ActiveRecord *)record
{
	[[Registry instance].records addObject:record];
	
	return [[Registry instance].records indexOfObject:record];
}

+ (ActiveRecord *)activeRecord:(NSInteger)key
{
	return [[Registry instance].records objectAtIndex:key];
}

- (void)dealloc
{
	[self.records removeAllObjects];
	self.records = nil;
}

@end
