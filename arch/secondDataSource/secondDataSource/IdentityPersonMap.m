//
//  IdentityPersonMap.m
//  secondDataSource
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "IdentityPersonMap.h"

@interface IdentityPersonMap ()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation IdentityPersonMap

+ (instancetype)instance
{
	static IdentityPersonMap *instance = nil;
	
	if (!instance)
	{
		@synchronized(self)
		{
			if (!instance)
			{
				instance = [[self alloc]init];
				
				instance.array = [[NSMutableArray alloc]init];
			}
		}
	}

	return instance;
}

+ (PersonGateway *)getPerson:(NSInteger)key
{
	IdentityPersonMap *instance =  [self instance];
	 
	return [instance.array objectAtIndex:key];;
}

+ (NSInteger)addPerson:(PersonGateway *)person
{
	IdentityPersonMap *instance =  [self instance];
	
	[instance.array addObject:person];
	
	return [instance.array indexOfObject:person];
}

@end
