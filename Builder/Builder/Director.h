//
//  Director.h
//  Builder
//
//  Created by hcyrig on 8/16/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class Builder;

@interface Director : NSObject

- (instancetype)initWithBuilder:(Builder *)tBuilder;

- (id)makeEntity;

@end
