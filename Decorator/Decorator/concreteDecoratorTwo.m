//
//  concreteDecoratorTwo.m
//  Decorator
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "concreteDecoratorTwo.h"

@implementation concreteDecoratorTwo

- (NSString *)someAbstractethod
{
	return [NSString stringWithFormat:@"Concrete decorator two + %@",[super someAbstractethod]];
}

@end
