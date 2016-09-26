//
//  ActiveRecord.m
//  ActiveRecord
//
//  Created by hcyrig on 7/28/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "ActiveRecord.h"

#import "Registry.h"

@implementation ActiveRecord

+ (ActiveRecord *)find:(NSInteger)key
{
	ActiveRecord *record = [Registry activeRecord:key];
	
	if (record)
	{
		return [Registry activeRecord:key];
	}
	
	//some find logic
	
	record = [ActiveRecord load:nil];
	
	return record;
}

+ (ActiveRecord *)load:(NSData *)data
{
	//some load logic
	
	ActiveRecord *record  = (ActiveRecord *)data;
	
	return record;
}

- (void)update:(NSString *)name surname:(NSString *)surname lastname:(NSString *)lastname
{

}

- (NSInteger)add
{
	return 0;
}

- (void)remove
{

}

- (void)someDomainLogic
{

}

- (void)anyDomainLogic
{

}

@end
