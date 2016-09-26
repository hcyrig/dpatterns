//
//  concreteTemplateMethod.m
//  TemplateMethod
//
//  Created by hcyrig on 7/24/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "concreteTemplateMethod.h"

@implementation concreteTemplateMethod

- (void)abstractMethodOne
{
	NSLog(@"\n-%@",NSStringFromSelector(_cmd));
}

- (void)abstractMethodTwo
{
	NSLog(@"\n-%@",NSStringFromSelector(_cmd));
}

- (void)abstractMethodThree
{
	NSLog(@"\n-%@",NSStringFromSelector(_cmd));
}

- (BOOL)someHookThree
{
	return NO;
}

@end
