//
//  Object.h
//  Strategy
//
//  Created by hcyrig on 7/25/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Strategy;

@interface Object : NSObject

@property (nonatomic, strong) id<Strategy> strategy;

- (instancetype)initWithStrategy:(id<Strategy>)strategy;
- (void)perfomeBaseLogicOne;
- (void)perfomeStrategy;

@end
