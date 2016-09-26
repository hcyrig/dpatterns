//
//  ObjectMapper.h
//  Data Mapper
//
//  Created by hcyrig on 7/31/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "AbstractMapper.h"

@class Person;

@interface PersonMapper : AbstractMapper

- (Person *)findPerson:(NSInteger)idPerson;

- (void)updatePerson:(Person *)person;

- (NSInteger)insertPerson:(Person *)person;

- (void)deletePerson:(NSInteger)idPerson;

@end