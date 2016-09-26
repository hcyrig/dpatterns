//
//  KidObject.m
//  AbstractFactory
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "KidObject.h"

#import "AbstractFactoryInterface.h"

@interface KidObject ()
{
	AbstractFactoryInterface *factory;
}

@end

@implementation KidObject

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
	
	NSLog(@"%@ maked with items [%@ %@ %@].",NSStringFromClass([self class]),self.one,self.two,self.three);
}

@end
