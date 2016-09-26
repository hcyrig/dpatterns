//
//  TargetObjectAdapter.h
//  Adapter
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "TargetObject.h"

@class Adaptee;

@interface TargetObjectAdapter : TargetObject

- (instancetype)initWithAdaptee:(Adaptee *)adaptee;

@end
