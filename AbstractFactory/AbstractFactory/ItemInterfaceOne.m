//
//  ItemInterfaceOne.m
//  AbstractFactory
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "ItemInterfaceOne.h"

@implementation ItemInterfaceOne

- (NSString *)description
{
	return [NSString stringWithFormat:@"%@",NSStringFromClass([self class])];
}

@end
