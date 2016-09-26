//
//  Initializer.h
//  Command
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

@protocol Command;

@interface InitializerOne : NSObject

@property (nonatomic, strong) id <Command> onCommand;
@property (nonatomic, strong) id <Command> offCommand;

- (instancetype)init:(id <Command>)onCommand
		  offCommand:(id <Command>)offCommand;

- (void)onPerfome;
- (void)offPerfome;
- (void)undoPerfome;

@end
