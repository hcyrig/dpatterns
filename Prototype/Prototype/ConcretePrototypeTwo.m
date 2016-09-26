//
//  ConcretePrototypeTwo.m
//  Prototype
//
//  Created by hcyrig on 8/18/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "ConcretePrototypeTwo.h"

@implementation ConcretePrototypeTwo

- (void)name
{
	NSLog(@"%@",NSStringFromClass([self class]));
}

- (Prototype *)clone
{
	return [self copy];
}

@end
