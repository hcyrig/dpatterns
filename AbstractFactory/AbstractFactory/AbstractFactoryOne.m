//
//  AbstractFactoryOne.m
//  AbstractFactory
//
//  Created by hcyrig on 7/26/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "AbstractFactoryOne.h"

#import "ItemOneOne.h"
#import "ItemTwoOne.h"
#import "ItemThreeOne.h"

@implementation AbstractFactoryOne

- (ItemInterfaceOne *)createItemOne
{
	return [[ItemOneOne alloc] init];
}

- (ItemInterfaceTwo *)createItemTwo
{
	return [[ItemTwoOne alloc] init];
}

- (ItemInterfaceThree *)createItemThree
{
	return [[ItemThreeOne alloc]init];
}

@end
