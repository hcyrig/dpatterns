//
//  Builder.h
//  Builder
//
//  Created by hcyrig on 8/16/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@interface Builder : NSObject

@property (nonatomic, strong) id entity;

- (void)makeHead;
- (void)makeBody;
- (void)makeFoot;

@end
