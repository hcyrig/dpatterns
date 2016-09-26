//
//  ObserverObject.h
//  Observer
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@protocol ObserverSubject;

@protocol ObserverObject <NSObject>

- (void)update:(id<ObserverSubject>)subject userInfo:(id)object;

@end
