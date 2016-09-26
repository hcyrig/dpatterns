//
//  InitializerThree.m
//  Command
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "InitializerThree.h"

#import "Command.h"

@implementation InitializerThree

- (instancetype)initWithCommand:(id <Command>)command
{
	self = [super init];

	if (self)
	{
		_command = command;
	}
	
	return self;
}

- (void)perfome
{
	[self.command execute];
}

- (void)undoPerfome
{
	[self.command undo];
}

@end
