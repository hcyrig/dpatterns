//
//  KidObject.h
//  AbstractFactory
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Object.h"

@class AbstractFactoryInterface;

@interface KidObject : Object

- (instancetype)initWithFactory:(AbstractFactoryInterface *)tFactory;

@end
