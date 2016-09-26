//
//  AbstractFactoryInterface.m
//  AbstractFactory
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "AbstractFactoryInterface.h"

@implementation AbstractFactoryInterface

- (ItemInterfaceOne *)createItemOne
{
	NSAssert(NO,@"Please implement abstract method %@ in class",NSStringFromSelector(_cmd),NSStringFromClass([self class]));
	
	return nil;
}

- (ItemInterfaceTwo *)createItemTwo
{
	NSAssert(NO,@"Please implement abstract method %@ in class",NSStringFromSelector(_cmd),NSStringFromClass([self class]));
	
	return nil;
}

- (ItemInterfaceThree *)createItemThree
{
	NSAssert(NO,@"Please implement abstract method %@ in class",NSStringFromSelector(_cmd),NSStringFromClass([self class]));
	
	return nil;
}
@end
