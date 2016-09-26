//
//  Registry.h
//  secondDataSource
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class PersonGateway;

@interface Registry : NSObject

+ (NSInteger)addPerson:(PersonGateway *)personGateway;

+ (PersonGateway *)getPersonGateWay:(NSInteger)key;

@end