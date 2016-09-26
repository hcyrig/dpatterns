//
//  AbstractMapper.m
//  Data Mapper
//
//  Created by hcyrig on 7/31/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "AbstractMapper.h"

#import "Registry.h"

@interface AbstractMapper ()

- (id)someMethodPerfomeQuery:(NSString *)query;

@end

@implementation AbstractMapper

- (id)find:(NSString *)query idObject:(NSInteger)idObject
{
	id resultObject = nil;
	
	if (![Registry object:idObject])
	{
		NSString *someResult = [self someMethodPerfomeQuery:query];
		
		resultObject = [self load:someResult];
	}
	
	return resultObject;
}

- (void)remove:(NSString *)query idObject:(NSInteger)idObject
{
	if ([Registry object:idObject])
	{
		[Registry removeObject:idObject];
	}
	
	//execute query for delete item
}

- (NSInteger)insert:(NSString *)query insertStatment:(id)object
{
	//exucute query with insert statment
	
	return [Registry addObject:object];
}

- (void)update:(NSString *)query updateStatment:(id)object
{
	//execute query with object statment
}

- (id)load:(NSString *)result
{
	NSInteger integerValue = result.intValue;
	
	if ([Registry object:integerValue])
	{
		return [Registry object:integerValue];
	}

	id resultObject = [self loadIdObject:integerValue results:result];
	
	[Registry addObject:resultObject];
	
	return resultObject;
}

- (id)someMethodPerfomeQuery:(NSString *)query
{
	return @"Some result";
}

- (id)loadIdObject:(NSInteger)idObject results:(id)results
{
	NSAssert(NO,@"Please inmplement this method '%@' in class '%@'",NSStringFromSelector(_cmd),NSStringFromClass([self class]));
	
	return nil;
}


@end
