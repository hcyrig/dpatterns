//
//  HTMLBuilder.m
//  Builder
//
//  Created by hcyrig on 8/16/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "HTMLBuilder.h"

@implementation HTMLBuilder

- (void)makeHead
{
	NSLog(@"\n Make a %@ head",NSStringFromClass([self class]));
}

- (void)makeBody
{
	NSLog(@"\n Make a %@ body",NSStringFromClass([self class]));
}

- (void)makeFoot
{
	NSLog(@"\n Make a %@ foot",NSStringFromClass([self class]));
}

@end
