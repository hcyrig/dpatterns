//
//  ObjectMapper.m
//  Data Mapper
//
//  Created by hcyrig on 7/31/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "PersonMapper.h"

#import "Person.h"

@implementation PersonMapper

- (Person *)findPerson:(NSInteger)idPerson
{
	NSString *query = @"Find person query!";
	
	return [self find:query idObject:idPerson];
}

- (id)loadIdObject:(NSInteger)idObject results:(id)results
{
	Person *somePersone = [[Person alloc]init];
	
	[somePersone setSomePrivateParametr:results];
	
	return somePersone;
}

- (void)updatePerson:(Person *)person
{
	NSString *someQuery = @"Some update query!";
	
	NSString *updateParametr = person.somePersonParametr;

	[self update:someQuery updateStatment:updateParametr];
}

- (NSInteger)insertPerson:(Person *)person
{
	NSString *someQuery = @"Some insert query!";
	
	return [self insert:someQuery insertStatment:person];
}

- (void)deletePerson:(NSInteger)idPerson
{
	NSString *someQuery = @"Some delete query!";
	
	[self remove:someQuery idObject:idPerson];
}

@end