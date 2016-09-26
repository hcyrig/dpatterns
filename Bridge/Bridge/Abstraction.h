//
//  Abstraction.h
//  Bridge
//
//  Created by hcyrig on 8/16/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class Bridge;

@interface Abstraction : NSObject

@property (nonatomic, strong) Bridge *bridge;

- (void)someAbstractMethod;

- (void)someAbstractMethod:(NSString *)string;

@end
