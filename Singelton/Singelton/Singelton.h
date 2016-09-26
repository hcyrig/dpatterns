//
//  Singelton.h
//  Singelton
//
//  Created by hcyrig on 7/26/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singelton : NSObject

+ (instancetype)instanceOne;

+ (instancetype)instanceTwo;

+ (instancetype)instanceThree;

- (NSString *)someSingeltonMethod;

@end
