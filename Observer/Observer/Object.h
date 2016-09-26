//
//  Object.h
//  Observer
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@protocol ObserverObject;

@class Subject;

@interface Object : NSObject <ObserverObject>

- (instancetype)initWithSubject:(Subject *)tempSubjet;

@end
