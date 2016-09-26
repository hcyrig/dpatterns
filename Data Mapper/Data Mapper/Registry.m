//
//  Registry.m
//  Data Mapper
//
//  Created by hcyrig on 7/31/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Registry.h"

@interface Registry ()

@property (nonatomic, strong) NSMutableArray *personArray;

@end

@implementation Registry

static Registry *instance = nil;

+ (instancetype)instance
{
	if (!instance)
	{
		@synchronized(self)
		{
			if(!instance)
			{
				instance = [[Registry alloc]init];
				instance.personArray = [[NSMutableArray alloc]init];
			}
		}
	}
	
	return instance;
}

+ (id)object:(NSInteger)idObject
{
	id result = nil;
	
	@try
	{
		result = [[Registry instance].personArray objectAtIndex:idObject];
	}
	@catch (NSException *exception)
	{
		NSLog(@"\n%@ -> %@\n",exception.name,exception.description);
	}
	@finally
	{
		return result;
	}
}

+ (NSInteger)addObject:(id)object
{
	[[Registry instance].personArray addObject:object];
	
	return [[Registry instance].personArray indexOfObject:object];
}

+ (void)removeObject:(NSInteger)idObject
{
	[[Registry instance].personArray removeObjectAtIndex:idObject];
}

@end
