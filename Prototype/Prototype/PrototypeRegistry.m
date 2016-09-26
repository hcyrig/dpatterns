//
//  PrototypeRegister.m
//  Prototype
//
//  Created by hcyrig on 8/19/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "PrototypeRegistry.h"

#import "ConcretePrototypeOne.h"
#import "ConcretePrototypeTwo.h"

@interface PrototypeRegistry ()
{
	NSMutableDictionary *registry;
}

@end

@implementation PrototypeRegistry

- (instancetype)init
{
	self = [super init];
	
	if (self)
	{
		[self fillRegistry];
	}

	return self;
}

- (void)fillRegistry
{
	[self addPrototype:[[ConcretePrototypeOne alloc]init] key:@"One"];
	
	[self addPrototype:[[ConcretePrototypeTwo alloc]init] key:@"Two"];
}

- (NSMutableDictionary *)registry
{
	if (!registry)
	{
		registry = [[NSMutableDictionary alloc]init];
	}

	return registry;
}

- (void)addPrototype:(Prototype *)prototype key:(NSString *)key
{
	[[self registry] setObject:prototype forKey:key];
}

- (Prototype *)prototypeFromKey:(NSString *)key
{
	return [[[self registry] objectForKey:key] clone];
}

@end
