//
//  IdentityPersonMap.h
//  secondDataSource
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class PersonGateway;

@interface IdentityPersonMap : NSObject

+ (instancetype)instance;

+ (PersonGateway *)getPerson:(NSInteger)key;

+ (NSInteger)addPerson:(PersonGateway *)person;

@end
