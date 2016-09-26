//
//  concreteDecoratorOne.m
//  Decorator
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "concreteDecoratorOne.h"

@implementation concreteDecoratorOne

- (NSString *)someAbstractethod
{
	return [NSString stringWithFormat:@"Concrete decorator one + %@",[super someAbstractethod]];
}

@end
