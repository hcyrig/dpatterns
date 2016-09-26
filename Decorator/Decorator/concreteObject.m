//
//  concreteObject.m
//  Decorator
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "concreteObject.h"

@implementation concreteObject

- (NSString *)someAbstractethod
{
	return [NSString stringWithFormat:@"class:\"%@\"",NSStringFromClass([self class])];
}

@end
