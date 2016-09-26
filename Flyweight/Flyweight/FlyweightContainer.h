//
//  FlyweightContainer.h
//  Flyweight
//
//  Created by hcyrig on 8/23/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class Flyweight;

@interface FlyweightContainer : NSObject

- (Flyweight *)flyweightFromKey:(NSString *)key;

@end