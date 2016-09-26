//
//  Person.h
//  secondDataSource
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@interface PersonGateway : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *lastname;
@property (nonatomic, copy) NSString *surname;

- (NSString *)update;
- (NSString *)add;
- (NSString *)remove;

@end