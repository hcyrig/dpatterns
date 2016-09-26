//
//  Initializer.m
//  Command
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "InitializerOne.h"

#import "Command.h"
#import "commandNo.h"

@interface InitializerOne ()

@property (nonatomic, strong) id <Command> undoCommand;

@end

@implementation InitializerOne

- (instancetype)init:(id <Command>)onCommand
				offCommand:(id<Command>)offCommand
{
	self = [super init];

	if (self){
		_onCommand = onCommand;
		_offCommand = offCommand;
		_undoCommand = [[commandNo alloc]init];
	}

	return self;
}

- (void)onPerfome{
	[self.onCommand execute];

	self.undoCommand = self.onCommand;
}

- (void)offPerfome{
	[self.offCommand execute];
	
	self.undoCommand = self.offCommand;
}

- (void)undoPerfome
{
	[self.undoCommand undo];
}

@end
