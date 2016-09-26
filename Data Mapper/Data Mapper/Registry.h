//
//  Registry.h
//  Data Mapper
//
//  Created by hcyrig on 7/31/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@interface Registry : NSObject

+ (id)object:(NSInteger)idObject;

+ (NSInteger)addObject:(id)object;

+ (void)removeObject:(NSInteger)idObject;

@end