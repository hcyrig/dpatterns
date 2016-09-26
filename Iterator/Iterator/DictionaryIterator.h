//
//  DictionaryIterator.h
//  Iterator
//
//  Created by hcyrig on 8/9/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Iterator.h"

@interface DictionaryIterator : Iterator

- (instancetype)initWithCollection:(NSMutableDictionary *)dictionary;

@end
