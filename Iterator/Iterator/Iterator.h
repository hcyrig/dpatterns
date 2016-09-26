//
//  Iterator.h
//  Iterator
//
//  Created by hcyrig on 8/9/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@interface Iterator : NSObject

- (BOOL)hasNext;
- (id)next;
- (void)remove;

//- (id)correntItem;
//- (void)first;
//- (BOOL)isDone;
//- (void)next;

@end
