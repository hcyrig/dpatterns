//
//  Creator.h
//  FactoryMethod
//
//  Created by hcyrig on 7/26/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Object;

@interface Creator : NSObject

- (void)basicMethod:(NSString *)type;

- (Object *)factoryMethod:(NSString *)type;

@end
