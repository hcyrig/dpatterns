//
//  macroCommad.m
//  Command
//
//  Created by hcyrig on 8/8/14.
//  Copyright (c) 2014 Kostiantyn Girych. All rights reserved.
//

#import "macroCommad.h"

#import "Command.h"

@interface macroCommad ()

@property (nonatomic, strong) NSArray *macroCommands;

@end

@implementation macroCommad

- (instancetype)initWithCommands:(NSArray *)commandsArray
{
	self = [super init];

	if (self)
	{
		_macroCommands = [NSArray arrayWithArray:commandsArray];
	}
	
	return self;
}

- (void)execute
{
	for (id <Command> command in self.macroCommands)
	{
		[command execute];
	}
}

- (void)undo
{
	for (NSInteger i = self.macroCommands.count - 1; i>=0 ;i--)
	{
		id <Command> command = [self.macroCommands objectAtIndex:i];
		
		[command undo];
	}
}

- (void)load
{
	//load command from target repository and execute it before some crash of enviroment
}

- (void)store
{
	//save command state to disk or target repository in fact crash application
}

- (id)perfomeCopy
{
	return [self copy];
}

- (id)copyWithZone:(NSZone *)zone
{
	macroCommad *macroCommand = [[[self class] allocWithZone:zone] initWithCommands:self.macroCommands];

	return macroCommand;
}

@end
