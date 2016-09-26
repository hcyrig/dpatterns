//
//  ObjectDecorator.h
//  Decorator
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Object.h"

@interface ObjectDecorator : Object
{
	@protected
		Object *concreteObject;
}

- (instancetype)initWithObject:(Object *)object;

@end
