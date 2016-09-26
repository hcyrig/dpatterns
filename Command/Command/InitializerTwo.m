//
//  InitializerTwo.m
//  Command
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "InitializerTwo.h"

#import "Command.h"
#import "commandNo.h"

@interface InitializerTwo ()

@property (nonatomic, strong) NSMutableArray *undoCommandArray;

@end

@implementation InitializerTwo

- (instancetype)init:(id <Command>)onCommand
		  offCommand:(id<Command>)offCommand
{
	self = [super init];
	
	if (self)
	{
		_onCommand = onCommand;
		_offCommand = offCommand;
		_undoCommandArray = [[NSMutableArray alloc]init];
	}
	
	return self;
}

- (void)onPerfome
{
	[self.onCommand execute];
	
	[self.undoCommandArray addObject:[self.onCommand perfomeCopy]];
}

- (void)offPerfome
{
	[self.offCommand execute];
	
	[self.undoCommandArray addObject:[self.offCommand perfomeCopy]];
}

- (void)undoPerfome
{
	id <Command> command = [self.undoCommandArray lastObject];
	
	[command undo];
	
	[self.undoCommandArray removeObject:command];
}

@end