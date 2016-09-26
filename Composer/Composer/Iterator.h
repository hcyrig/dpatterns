//
//  Iterator.h
//  Composer
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class Component;

@interface Iterator : NSObject

- (BOOL)hasNext;

- (Component *)next;

- (void)remove;

@end
