//
//  ObserverSubject.h
//  Observer
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@protocol ObserverObject;

@protocol ObserverSubject <NSObject>

- (void)addObserver:(id<ObserverObject>) object;
- (void)deleteObserver:(id<ObserverObject>) object;
- (void)notify;

@end
