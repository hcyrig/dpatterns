//
//  ComponentComposite.m
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "ComponentComposite.h"

#import "IteratorComposite.h"

#import "Collection.h"

@interface ComponentComposite ()
{
	NSString *name;
	NSString *description;
	Collection *components;
}

@end

@implementation ComponentComposite

- (instancetype)init:(NSString *)tName description:(NSString *)tDescription
{
	self = [super init];
	
	if (self)
	{
		name = tName;
		description = tDescription;
	}
	
	return self;
}

- (void)add:(Component *)component
{
	[[self components].array addObject:component];
}

- (void)removeComponent:(Component *)component
{
	[[self components].array removeObject:component];
}

- (Component *)component:(NSInteger)idComponent
{
	return [[self components].array objectAtIndex:idComponent];
}

- (NSString *)name
{
	return name;
}

- (NSString *)descriptions
{
	return description;
}

- (void)print
{
	Iterator *iterator = [[self components] iterator];
	
	while (iterator.hasNext) {
		
		Component *component = [iterator next];
		
		[component print];
	}
	
	printf("\n%s %s",[[self name] UTF8String],[[self descriptions] UTF8String]);
}

- (Collection *)components
{
	if (!components)
	{
		components = [[Collection alloc]init];
	}

	return components;
}

- (Iterator *)iterator
{
	return [[IteratorComposite alloc]initWithIterator:[[self components] iterator]];
}

@end