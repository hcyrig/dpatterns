//
//  concreteAbstractionAnother.m
//  Bridge
//
//  Created by hcyrig on 8/16/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "concreteAbstractionAnother.h"

#import "Bridge.h"

@implementation concreteAbstractionAnother

- (void)someAbstractMethod
{
	NSLog(@"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
	NSLog(@"Some logic");
	
	[self.bridge someMethod];
}

- (void)someAbstractMethod:(NSString *)string
{
	NSLog(@"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
	NSLog(@"Some logic");
	
	[self.bridge someMethod:string];
}

@end
