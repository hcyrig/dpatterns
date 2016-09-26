//
//  concreteBridgeAnother.m
//  Bridge
//
//  Created by hcyrig on 8/16/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "concreteBridgeAnother.h"

@implementation concreteBridgeAnother

- (void)someMethod
{
	NSLog(@"%@ %@",NSStringFromSelector(_cmd),NSStringFromClass([self class]));
}

- (void)someMethod:(NSString *)string
{
	NSLog(@"%@ %@",NSStringFromSelector(_cmd),NSStringFromClass([self class]));
}

@end
