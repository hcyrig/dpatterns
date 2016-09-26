//
//  Object.h
//  AbstractFactory
//
//  Created by hcyrig on 7/27/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@class ItemInterfaceOne;
@class ItemInterfaceTwo;
@class ItemInterfaceThree;

@interface Object : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) ItemInterfaceOne *one;
@property (nonatomic, strong) ItemInterfaceTwo *two;
@property (nonatomic, strong) ItemInterfaceThree *three;

- (void)make;

@end
