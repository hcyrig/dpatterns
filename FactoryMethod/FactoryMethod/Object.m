//
//  Object.m
//  FactoryMethod
//
//  Created by hcyrig on 7/26/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Object.h"

@implementation Object

- (void)firstMethod
{
	NSLog(@"%@ first method",NSStringFromClass([self class]));
}

- (void)secondMethod
{
	NSLog(@"%@ second method",NSStringFromClass([self class]));
}

-(void)thirdMethod
{
	NSLog(@"%@ third method",NSStringFromClass([self class]));
}

- (void)objecDescription
{
	NSLog(@"%@ description",NSStringFromClass([self class]));
}

@end
