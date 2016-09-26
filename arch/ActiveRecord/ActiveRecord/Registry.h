//
//  Registry.h
//  ActiveRecord
//
//  Created by hcyrig on 7/28/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class ActiveRecord;

@interface Registry : NSObject

+ (instancetype)instance;

+ (NSInteger)addActiveRecord:(ActiveRecord *)record;

+ (ActiveRecord *)activeRecord:(NSInteger)key;

@end
