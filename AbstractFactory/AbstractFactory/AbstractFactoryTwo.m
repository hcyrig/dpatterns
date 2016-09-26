//
//  AbstractFactoryTwo.m
//  AbstractFactory
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "AbstractFactoryTwo.h"

#import "ItemOneTwo.h"
#import "ItemTwoTwo.h"
#import "ItemThreeTwo.h"

@implementation AbstractFactoryTwo

- (ItemInterfaceOne *)createItemOne
{
	return [[ItemOneTwo alloc]init];
}

- (ItemInterfaceTwo *)createItemTwo
{
	return [[ItemTwoTwo alloc] init];
}

- (ItemInterfaceThree *)createItemThree
{
	return [[ItemThreeTwo alloc]init];
}

@end
