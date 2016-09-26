//
//  Context.h
//  State
//
//  Created by hcyrig on 8/11/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class State;

@interface Context : NSObject

- (void)setState:(State *)tState;

- (void)someFirstMethod;
- (void)someSecondMethod;
- (void)someThirdMethod;

@end
