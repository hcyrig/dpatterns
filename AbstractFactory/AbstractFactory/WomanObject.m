//
//  WomanObject.m
//  AbstractFactory
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "WomanObject.h"

#import "AbstractFactoryInterface.h"

@interface WomanObject ()
{
	AbstractFactoryInterface *factory;
}

@end

@implementation WomanObject

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
	
	NSLog(@"%@ maked with items [%@ %@ %@].",NSStringFromClass([self class]),self.one,self.two,self.three);
}

@end
