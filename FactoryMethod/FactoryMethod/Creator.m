//
//  Creator.m
//  FactoryMethod
//
//  Created by hcyrig on 7/26/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Creator.h"

#import "Object.h"

@implementation Creator

- (void)basicMethod:(NSString *)type
{
	[self someMethod];

	Object *concreteObject = [self factoryMethod:type];
	
	[concreteObject objecDescription];
	
	[concreteObject firstMethod];
	[concreteObject secondMethod];
	[concreteObject thirdMethod];
}

- (void)someMethod
{
	NSLog(@"%@ method",NSStringFromClass([self class]));
}

- (Object *)factoryMethod:(NSString *)type
{
	NSAssert(NO,@"Please implemet abstract method");
	return nil;
}

@end