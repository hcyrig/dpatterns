//
//  ManObject.m
//  AbstractFactory
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "ManObject.h"

#import "AbstractFactoryInterface.h"

@interface ManObject ()
{
	AbstractFactoryInterface *factory;
}

@end

@implementation ManObject

- (instancetype)initWithFactory:(AbstractFactoryInterface *)tFactory
{
    self = [super init];
    if (self)
	{
		factory = tFactory;
    }
    return self;
}

- (void)make
{
	self.one = factory.createItemOne;
	self.two = factory.createItemTwo;
	self.three = factory.createItemThree;
	
	NSLog(@"%@ maked with items [%@ %@ %@].",NSStringFromClass([self class]),self.one,self.two,self.three);
}

@end
