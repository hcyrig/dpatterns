//
//  InitializerThree.h
//  Command
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@protocol Command;

@interface InitializerThree : NSObject

@property (nonatomic, strong) id <Command> command;

- (instancetype)initWithCommand:(id <Command>)command;

- (void)perfome;
- (void)undoPerfome;

@end
