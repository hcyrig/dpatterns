//
//  Collection.h
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class Iterator;

@interface Collection : NSObject

- (Iterator *)iterator;

- (NSMutableArray *)array;

@end
