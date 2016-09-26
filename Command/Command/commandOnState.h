//
//  concreteCommand.h
//  Command
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@protocol Command;
@class concreateObject;

@interface commandOnState : NSObject <Command, NSCopying>

- (instancetype)init:(concreateObject *)object;

@end
