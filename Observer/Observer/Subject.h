//
//  Subject.h
//  Observer
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@protocol ObserverSubject;

@interface Subject : NSObject <ObserverSubject>

- (void)stateChanged;

@end
