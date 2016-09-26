//
//  TargetObjectAdapter.m
//  Adapter
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "TargetObjectAdapter.h"

#import "Adaptee.h"

@interface TargetObjectAdapter ()

@property (nonatomic, strong) Adaptee *adaptee;

@end

@implementation TargetObjectAdapter

- (instancetype)initWithAdaptee:(Adaptee *)adaptee
{
	self = [super init];
	
	if (self)
	{
		_adaptee = adaptee;
	}

	return self;
}


- (void)targetMethodOne
{
	[self.adaptee adapteeMethodOne];
}

- (void)targetMethodTwo
{
	[self.adaptee adapteeMethodTwo];
}

- (void)targetMethodThree
{
	[self.adaptee adapteeMethodThree];
}

@end