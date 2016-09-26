//
//  AbstractFactoryThree.m
//  AbstractFactory
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "AbstractFactoryThree.h"

#import "ItemOneThree.h"
#import "ItemTwoThree.h"
#import "ItemThreeThree.h"

@implementation AbstractFactoryThree

- (ItemInterfaceOne *)createItemOne
{
	return [[ItemOneThree alloc]init];
}

- (ItemInterfaceTwo *)createItemTwo
{
	return [[ItemTwoThree alloc] init];
}

- (ItemInterfaceThree *)createItemThree
{
	return [[ItemThreeThree alloc]init];
}

@end
