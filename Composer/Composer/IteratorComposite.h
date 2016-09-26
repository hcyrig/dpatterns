//
//  IteratorComposite.h
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "Iterator.h"

@interface IteratorComposite : Iterator

- (instancetype)initWithIterator:(Iterator *)iterator;

@end
