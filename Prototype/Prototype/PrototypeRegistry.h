//
//  PrototypeRegister.h
//  Prototype
//
//  Created by hcyrig on 8/19/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class Prototype;

@interface PrototypeRegistry : NSObject

- (Prototype *)prototypeFromKey:(NSString *)key;

@end
